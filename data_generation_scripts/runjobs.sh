
#!/bin/sh

for FILE in ${HOME}/Programs/argos3-kilobot/job_cluster/*;
do
    echo " comes to loop in runjobs.sh"

    sbatch $FILE &> /dev/null
    
done
