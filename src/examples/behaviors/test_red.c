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




//CODE FOR MAJORITY RULE WITH k=5 with sticky defence in blue option with lower quality.
//YOU WILL NEED TO VARY PARAMETER with *** to run best with your bots



/* Enum for different motion types */
typedef enum {
	STOP = 0,
	FORWARD,
	TURN_LEFT,
	TURN_RIGHT,
} motion_t;
bool broadcast_msg = false;
unsigned int turning_ticks = 0;
const uint8_t max_turning_ticks = 150; //*** constant to set maximum rotation to turn during random walk 
const uint32_t max_straight_ticks = 300; //*** set the time to walk straight beofre randomnly turning
//const uint32_t broadcast_ticks = 32;
uint32_t last_motion_ticks = 0;
//uint32_t last_broadcast_ticks = 0;
//uint32_t last_update_ticks = 0;
int kilo_ticks2 = 0;
int received_option;
int received_uid;
message_t message;

// Flag to keep track of new messages.
int new_message = 0;
message_t received;
int distance;
// Flag to keep track of message transmission.
int last_changed;
bool calibrated = false;

int message_sent = 0;
//opinion = A
int currentopinion = 1;

int neighbourid[25] = {};//***change the size if running with more than 25 kilobots--> mention no of robots used in size
int neighbouropinion[25] = {}; //*** k->5, change to vary according to the majority rule
motion_t current_motion_type = STOP;
double ran_expo(double lambda){
    double u;
    u = rand() / (RAND_MAX + 0.05);
    return -log(1- u) / lambda;
}
 double timer;
//sets the qratios, 6/3=2, change values to vary
   //  double q3 = 0.003;//***
    // double q1 = 0.006;//***
double q3 = 0.003;//***
double q1 = 0.003;//***
double qnorm = 0.001; //***--> time to be in latent state
 int checknum = 2;
 int checkother = 1;

int checkloop = 0;

 int state = 0; //ND
 //Diseemination --> 1
 //Voting--> 2
 
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

void setup()
{
    
    srand(rand_hard());
    	/* Initialise motion variables */
	 if (currentopinion == 1){
  	                 //set_motion( FORWARD );//start moving forward
                     random_walk();
           //                   set_color(RGB(1, 1, 0));
            //delay(1000);
            //set_color(RGB(0, 0, 0));
        } else if (currentopinion == 2){
           	         //set_motion( FORWARD );//start moving forward
                     random_walk();
                   //           set_color(RGB(1, 1, 0));
         //   delay(1000);
         //   set_color(RGB(0, 0, 0));
          //  set_motion( STOP );
        }
    
	last_motion_ticks = rand() % max_straight_ticks + 1;

    last_changed = kilo_ticks;
    message.type = NORMAL;
    // Quality A=1, B=2
    message.data[0] = 1;
    //Opinion A=1 , B=3
    //red
    message.data[1] = currentopinion;
    message.data[2] = kilo_uid;
    message.crc = message_crc(&message);
    timer =  ran_expo(qnorm);
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


void loop() {

     //////////STATE 0-Latent//////////////////////

    if (state == 0){
        random_walk();
        if (currentopinion == 1){
            set_color(RGB(2, 0, 0));
        } else if (currentopinion == 2){
            set_color(RGB(0, 2, 2));
        }


     if (checkloop == 0){
         checkloop = 1;
      if ((kilo_ticks - last_changed) < timer) {
      } else{
           
            state = 1;
            if (currentopinion == 1){
                timer =  ran_expo(q3);
            }else{
                 timer =  ran_expo(q1);
            }
            kilo_ticks2 = kilo_ticks;

            set_color(RGB(0, 0, 0));
    
      }  
         
     }else{
         if ((kilo_ticks - kilo_ticks2) < timer) {
      } else{
           
            state = 1;
            if (currentopinion == 1){
                timer =  ran_expo(q3);
            }else{
                 timer =  ran_expo(q1);
            }
            kilo_ticks2 = kilo_ticks;
     //       last_changed = 0;
            //kilo_ticks = 0;
           // set_color(RGB(0, 0, 0));
    
      }  
         
     } 
    }
    
    
         //////////STATE 2-Voting//////////////////////

    if (state == 2){

      int x = 0;

     for(int i=0; i<450;i++){//*** increase i loop if more time in voting is required
         delay(5);
         if(x<=20){
          if (new_message == 1){
           new_message = 0;
           int index = find_index(neighbourid, 25, received_uid);//*** change according to array size
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
   
       if(x>=1){
        int check_for_no_val = 0;  

        for (int v = 0; v < 25; ++v){
            if(neighbouropinion[v] != 0) {
                check_for_no_val = check_for_no_val + 1;
            }
        }
          int val_choose = (rand() % ((check_for_no_val-1) + 1 - 0)) + 0;

          currentopinion = neighbouropinion[val_choose];
          message.data[1] = currentopinion;
          message.data[2] = kilo_uid;
          message.crc = message_crc(&message);
       }else{
          //currentopinion = current_opinion;
          message.data[1] = currentopinion;
          message.data[2] = kilo_uid;
          message.crc = message_crc(&message);
           
           
       }

           //int occur = countOccurrences(neighbouropinion, 5, checknum);//*** change according to array size
           // int occur2 = countOccurrences(neighbouropinion, 5, checkother);

                
     //clear the neighbour arrays
     for (int n = 0; n < 25; ++n){
        neighbourid[n] = 0;        
     }
     for (int m = 0; m < 25; ++m){
        neighbouropinion[m] = 0;        
     }
            
            state = 0;
            timer =  ran_expo(qnorm);
            kilo_ticks2 = kilo_ticks;
            //kilo_ticks = 0;
    set_color(RGB(0, 0, 0));
   }
   
   
   
     //////////STATE 1-Dissemination//////////////////////
   if(state ==1 ){
       random_walk();

       if ((kilo_ticks - kilo_ticks2) < timer) { //if within dessimnation time
       		broadcast_msg = true;

        }else{
           kilo_ticks2 = kilo_ticks;
           state = 2;//got to voting state
       }
              random_walk();
       
   }
    
    
////////////////////////////////////////
// DEBUGGING INFORMATION
//
// Save the value of 'own_gradient' into the debugging information
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
            set_color(RGB(1, 0, 0));
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
