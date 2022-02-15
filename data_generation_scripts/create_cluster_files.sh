#!/bin/bash

###################################
# Synopsis of the script
###################################
EXPECTED_ARGS=2
if [ $# -lt ${EXPECTED_ARGS} ]; then
  echo "This script creates N argos files for the cluster!"
  echo "Usage $0 <start> <end> "
  echo $'\t'"[MANDATORY] <start> number of the first experiment"
  echo $'\t'"[MANDATORY] <end> number of the last experiment ()"
  exit

else
  tmp_counter=0

  for j in $(seq ${1} ${2}); do
    # parameters to choose
    INITIAL_COMMITMENT=1 # initial commitment of the robots

    n=3

    INITIAL_COMMUNICATION_RANGE=1

    MAX_COMMUNICATION_RANGE=2


    EXP_NAME=votermodel_${j}_exp
    tmp_counter=$(( ${tmp_counter} + 1 ))

    NUM_ROBOTS=25        # number of robots
    QUORUM=-1            # Quorum to stop experiment NOT USED ATM
    EXP_LENGTH=1500      #length of the experiment in secs
    DATA_FREQUENCY=1     # frequency of saving the experiment data

    HRS=01 # hours the script takes
    MIN=00 # min the script takes

    #path to main directory
    EXP_FOLDER=${HOME}/Programs/argos3-kilobot

    # full path to the compiled robot behaviour/loopfunction
    BEHAVIOUR_RED=${EXP_FOLDER}/build/examples/behaviors/testred
    BEHAVIOUR_BLUE=${EXP_FOLDER}/build/examples/behaviors/testblue
    LOOPFUNCTION_FILE=${EXP_FOLDER}/build/examples/loop_functions/debug_loop_functions/libdebug_loop_functions

    #CONFIG_FILE=${EXP_FOLDER}/ARGoS_simulation/loop_functions/${conf}

    # path to template
    EXP_TEMPLATE_SRC=${EXP_FOLDER}/src/examples/experiments/kilobot_test.argos
    JOB_TEMPLATE_SRC=${EXP_FOLDER}/data_generation_scripts/runjob_template.sh

    EXP_DIR=${EXP_FOLDER}/experiments_cluster/${EXP_NAME}
    mkdir -p ${EXP_DIR}

    DATA_DIR=${EXP_FOLDER}/data_cluster/${EXP_NAME}
    mkdir -p ${DATA_DIR}

    JOB_DIR=${EXP_FOLDER}/job_cluster
    mkdir -p ${JOB_DIR}

    for i in $(seq 0 0); do

      EXP_FILE=${EXP_DIR}/${EXP_NAME}_${i}.argos # full path to the experiment configuration file
      JOB_FILE=${JOB_DIR}/${EXP_NAME}_${i}.sh
      DATA_FILE=${EXP_NAME}_${i}.txt # Full path to the data file

      JOB_NAME=${EXP_NAME}_${i}

      sed -e "s|exp_length|${EXP_LENGTH}|" \
        -e "s|randomseed|$(($j * 124))|" \
	-e "s|behaviourred|${BEHAVIOUR_RED}|" \
	-e "s|behaviourblue|${BEHAVIOUR_BLUE}|" \
        -e "s|loopfunctionpath|${LOOPFUNCTION_FILE}|" \
        -e "s|data_file|${DATA_FILE}|" \
        -e "s|num_robots|${NUM_ROBOTS}|" \
        ${EXP_TEMPLATE_SRC} >${EXP_FILE}

      sed -e "s|jobname|${JOB_NAME}|" \
        -e "s|min|${MIN}|" \
        -e "s|hrs|${HRS}|" \
        -e "s|argosfile|${EXP_FILE}|" \
        -e "s|logfile|${JOB_NAME}|" \
        -e "s|savefile|${DATA_FILE}|" \
        -e "s|wheresave|${DATA_DIR}/|" \
        ${JOB_TEMPLATE_SRC} >${JOB_FILE}
    done
  done
fi
