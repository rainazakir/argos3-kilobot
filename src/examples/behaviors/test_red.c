#include <kilolib.h>

//#define DEBUG
//#include "debug.h" // for real robots only
//#include <stdio.h> // for ARGOS only
#include <stdlib.h>
#include <math.h>
#include <float.h>
#include <stdbool.h>
// declare constants

////////////////////////////////////////
// DEBUGGING INFORMATION- for kilobot simulator
//
// First you must define a struct called 'debug_info_t'
//
// A good way to do it is in a separate header file, included by both
// the kilobot code and the loop functions.
#include "test_debug.h"
//
// Then include the header file that defines the debug functions
//
// Internally this uses the symbol 'debug_info_t', so you get a
// compilation error if the symbol is not defined
#include <debug.h>
//
////////////////////////////////////////



//YOU WILL NEED TO VARY PARAMETER with *** to run best with your bots

//set these up

#define SWARMSIZE 50

#define MODEL 1 // 0 --> Voter Model      1 --> CrossInhibition

double noise = 0.5; // SET THIS TO -1 FOR NO NOISE 


//opinion = A -->1   //opinion = B --> 2  //uncommited = C --> 3
int currentopinion = 1; //1

//////////////////////////////////////////////////////////////////////

/* Enum for different motion types */
typedef enum {
	STOP = 0,
	FORWARD,
	TURN_LEFT,
	TURN_RIGHT,
} motion_t;


bool broadcast_msg = false;
int received_option;
int received_uid;
unsigned int turning_ticks = 0;
const uint8_t max_turning_ticks = 150; //*** constant to set maximum rotation to turn during random walk 
const uint32_t max_straight_ticks = 300; //*** set the time to walk straight beofre randomnly turning
//const uint32_t broadcast_ticks = 32;
uint32_t last_motion_ticks = 0;
//uint32_t last_broadcast_ticks = 0;
//uint32_t last_update_ticks = 0;
int last_changed = 0;

message_t message;

// Flag to keep track of new messages.
int new_message = 0;
message_t received;
int distance;
// Flag to keep track of message transmission.
int last_changed;
//bool calibrated = false;

int message_sent = 0;

int neighbourid[SWARMSIZE] = {};//***change the size if running with more than 25 kilobots--> mention no of robots used in size
int neighbouropinion[SWARMSIZE] = {}; //right now voter *** k->5, change to vary according to the majority rule
motion_t current_motion_type = STOP;

//sets the qratios, 6/3=2, change values to vary
   //  double q3 = 0.003;//***
    // double q1 = 0.006;//***
double timer; // to hold time to be in each state 
double q3 = 0.003;//***qualities are same for A and B for now
double q1 = 0.003;//***qualities are same for A and B for now
double qnorm = 0.001; //***--> time to be in latent state


//int checknum = 2;
//int checkother = 1;
//int checkloop = 0;

int state = 0; //0--> ND, 1-->D, 2-->Voting // start in exploration state 

 //Diseemination --> 1
 //Voting--> 2
//int checknoise = 0;  // 0 --> no ,  1 --> yes

 ///////////////////FUNCTIONS 

double ran_expo(double lambda){
    double u;
    u = rand() / (RAND_MAX + 0.05);
    return -log(1- u) / lambda;
}

double r2()
{
    return (double)rand() / (double)RAND_MAX ;
}


void set_motion( motion_t new_motion_type ) {
	if( current_motion_type != new_motion_type ){
	
		switch( new_motion_type ) {
		case FORWARD:
			spinup_motors();
			set_motors(kilo_straight_left,kilo_straight_right);
			break;
		case TURN_LEFT:
			spinup_motors();
			set_motors(kilo_turn_left,0);
			break;
		case TURN_RIGHT:
			spinup_motors();
			set_motors(0,kilo_turn_right);
			break;
		case STOP:
            set_motors(0,0);
            break;
		}
		current_motion_type = new_motion_type;
	}
}

int countOccurrences(int arr[], int n, int x) 
{ 
    int res = 0; 
    for (int i=0; i<n; i++) 
        if (x == arr[i]) 
          res++; 
    return res; 
} 

int find_index(int a[], int num_elements, int value)
{
   int ii;
   for (ii=0; ii<num_elements; ii++)
   {
	 if (a[ii] == value)
	 {
	    return(value);  /* it was found */
	 }
   }
   return(-1);  /* if it was not found */
}


void random_walk(){
   switch( current_motion_type ) {
   case TURN_LEFT:
   case TURN_RIGHT:
      if(  kilo_ticks > last_motion_ticks + turning_ticks ) {
         /* start moving forward */
         last_motion_ticks = kilo_ticks;
         set_motion(FORWARD);
      }
      break;
   case FORWARD:
   	   //spinup_motors();
	   //set_motors(20,20);
      if( kilo_ticks > last_motion_ticks + max_straight_ticks ) {
         /* perform a radnom turn */
         last_motion_ticks = kilo_ticks;
         if( rand()%2 ) {
            set_motion(TURN_LEFT);
            current_motion_type = TURN_LEFT;
         }
         else {
            set_motion(TURN_RIGHT);
            current_motion_type = TURN_RIGHT;
         }
         turning_ticks = rand()%max_turning_ticks + 1;
      }
      break;
    case STOP:
         set_motion(STOP);
    default:
        set_motion(FORWARD);
   }
}

void gotoexploration(){
    
        random_walk();
        if (currentopinion == 1){
            set_color(RGB(1, 0, 0));

        } else if (currentopinion == 2){
            set_color(RGB(0, 1, 1));

        }else{
            set_color(RGB(1, 1, 0)); //uncomitted

        }


         if ((kilo_ticks - last_changed) < timer) {//check if still in latent mode or not
         } else{
             
            state = 1;//got to Dissemination mode
            if (currentopinion == 1){
                timer =  ran_expo(q3); //time for dissem if opinionA
            }else{
                 timer =  ran_expo(q1);//time for dissem if opinionB
            }
            last_changed = kilo_ticks;
            // last_changed = 0;
            //kilo_ticks = 0;
           set_color(RGB(0, 0, 0));
           // set_color(RGB(0, 0, 0));
    
     } 
    
}


void donoisyswitch(){
         if (MODEL == 1){ //if cross inhibition and noise switching
            
              int checkforAorBswitch = rand() % 2; // if 0 -->  switch to A ,  if 1 --> switch to B

              if(checkforAorBswitch == 0){ //A

                currentopinion = 1;

                set_color(RGB(1, 0, 0));

              }
              if(checkforAorBswitch == 1){ //B

                currentopinion = 2;
                set_color(RGB(0, 0, 1));

              }

            
        }
        
        
        if (MODEL == 0){ //if voter model and noise switching
        

            if (currentopinion == 1){   //if A then switch to b
              currentopinion = 2;

                
            }else{   // if B then switch to A
              currentopinion = 1;


            }


        }
    message.data[1] = currentopinion;
    message.data[2] = kilo_uid;
    message.crc = message_crc(&message);
        
           
    
    
}


void gotodissemination(){

       random_walk();

       if ((kilo_ticks - last_changed) < timer) { //if within dessimnation time
           if(currentopinion != 3){
       		broadcast_msg = true;
               
           }else{
               
                   set_color(RGB(2, 2, 0));

           }

        }else{
           last_changed = kilo_ticks;
           state = 2;//got to voting state
       }
              random_walk();
    
    
    
}

void vote(){
     int x = 0;
        
     //collect opinions from neighbours and their ids to ensure they vote once
     for(int i=0; i<450;i++){//*** increase i loop if more time in voting is required
         delay(5);
         if(x<=20){
          if (new_message == 1){
           new_message = 0;
           int index = find_index(neighbourid, SWARMSIZE, received_uid);//*** change according to array size
//           printf("index is %d",index);
           if (index == -1){//if neighbour has not already voted
            if (distance <= 200){//*** if distance less tahn 200
               neighbourid[x] = received_uid;//put id in array
                neighbouropinion[x] = received_option;//consider the opinion of neighbour and put in array
                x = x+1;
                delay(50);
	//            printf("%d",kilo_uid);
            }
           }
         }
        }
     }

 //neighbouropinion[8] = 2;
  //neighbouropinion[x] = currentopinion;//add own opinion to list of opinion
   //x = x+1;
   
       if(x>=1){ // if an opinion from a neighbouring robot was attained
           
        int check_for_no_val = 0;  

        for (int v = 0; v < SWARMSIZE; ++v){
            if(neighbouropinion[v] != 0) {
                check_for_no_val = check_for_no_val + 1;  //increment when an opinion is found
            }
        }
        
        //randonmly pick an opinion   
        int val_choose = (rand() % ((check_for_no_val-1) + 1 - 0)) + 0;
           
           
        if (MODEL == 1){ //if cross inhibition
           
                if(currentopinion != 3){ //if not uncommited

                      if (neighbouropinion[val_choose] != currentopinion){ //check if your opinion is not equal 
                           //go uncommited
                            currentopinion = 3;    
                            set_color(RGB(1, 1, 0));


                      }else{

                          currentopinion = neighbouropinion[val_choose];

                      }

                }else{

                  currentopinion = neighbouropinion[val_choose];



                }

            
        }
        if (MODEL == 0){ //switch randomly to an opinion
            
          currentopinion = neighbouropinion[val_choose];

        }
        
        message.data[1] = currentopinion;
        message.data[2] = kilo_uid;
        message.crc = message_crc(&message); 
     
           
           //if no neighbour found, stay with current opinion
       }else{
          //currentopinion = current_opinion;
          message.data[1] = currentopinion;
          message.data[2] = kilo_uid;
          message.crc = message_crc(&message);
           
           
       }

           //int occur = countOccurrences(neighbouropinion, 5, checknum);//*** change according to array size
           // int occur2 = countOccurrences(neighbouropinion, 5, checkother);

                
     //clear the neighbour arrays
     for (int n = 0; n < SWARMSIZE; ++n){
        neighbourid[n] = 0;        
     }
     for (int m = 0; m < SWARMSIZE; ++m){
        neighbouropinion[m] = 0;        
     }
            //go to exploration state
            state = 0;
            timer =  ran_expo(qnorm);
            last_changed = kilo_ticks;
            //kilo_ticks = 0;
            set_color(RGB(0, 0, 0));    
    
    
    
    
}


////////////////////

void setup()
{
    
    srand(rand_hard());
    
    random_walk();

    //random timing for motion 
	last_motion_ticks = rand() % max_straight_ticks + 1;

    //save the current ticks for comparison later on
    last_changed = kilo_ticks;
    message.type = NORMAL;
    // Quality A=1, B=2
    message.data[0] = currentopinion;
    //Opinion A=1 , B=2, U =3
    //red
    message.data[1] = currentopinion;
    message.data[2] = kilo_uid;
    message.crc = message_crc(&message);
    timer =  ran_expo(qnorm);
}



void loop() {

     //////////STATE 0-Latent: Exploration//////////////////////
    


    if (state == 0){
        
        gotoexploration();
        
    }
    
    
         //////////STATE 2-Voting//////////////////////

    if (state == 2){ 
        
        //get the random number 0-1
        double u = r2();
    
        
        if (u <= noise){ //switch to noise check
            set_color(RGB(0, 2, 0));
            delay(1000);
            
            //do switching
        
            donoisyswitch();

    } else{ //Go to Voting
            
        vote();
        
   
    }
        
}
   
   
   
     //////////STATE 1-Dissemination//////////////////////
   if(state ==1 ){
       
       gotodissemination();

       
       
   }
    
    
////////////////////////////////////////
// DEBUGGING INFORMATION
//
// Save the value of 'currentopinion' into the debugging information
// struct.
// This will make it available into the loop functions.
debug_info_set(currentopinion, currentopinion);
// Print a message. The message is prepended by the kilobot id.
debug_print("Saved own opinion value\n");
////////////////////////////////////////

 
}




void message_rx(message_t *msg, distance_measurement_t *distance_measurement)
{
    // Set the flag on message reception.
    new_message = 1;
    distance = estimate_distance(distance_measurement);
    received = *msg;
    received_option = msg->data[1];
    received_uid = msg->data[2];

}

void message_tx_success()
{
 broadcast_msg = false;
    if (currentopinion == 1){
            set_color(RGB(2, 0, 0));
            delay(10);
            set_color(RGB(0, 0, 0));
        } else if (currentopinion == 2){
            set_color(RGB(0, 2, 2));
            delay(10);
            set_color(RGB(0, 0, 0));
        }
    
}
message_t *message_tx()
{
    	if( broadcast_msg ) {
		return &message;
	}
	return 0;
}

int main()
{
    kilo_init();
    // Register the message_rx callback function.
        // Register the message_tx callback function.
    kilo_message_tx = message_tx;
    // Register the message_tx_success callback function.
    kilo_message_tx_success = message_tx_success;
    kilo_message_rx = message_rx;
    
    
    
   ////////////////////////////////////////
   // DEBUGGING INFORMATION
   //
   // Here is the place where you initialize the debugging information
   // struct.
   //
   // From now on, you can safely use 'debug_info' to refer to your
   // struct.
   debug_info_create();
   ////////////////////////////////////////

    
    kilo_start(setup, loop);
    
    return 0;
}
