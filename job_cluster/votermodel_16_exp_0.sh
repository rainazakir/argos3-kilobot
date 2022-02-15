#!/bin/sh
#SBATCH -J votermodel_16_exp_0
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=1gb                     # Job memory request
#SBATCH --time=01:00:00             # Time limit
#SBATCH -q short
#SBATCH --output=/home/rzakir/log/votermodel_16_exp_0.txt

argos3 -c /home/rzakir/Programs/argos3-kilobot/experiments_cluster/votermodel_16_exp/votermodel_16_exp_0.argos; echo Finished

mv votermodel_16_exp_0.txt /home/rzakir/Programs/argos3-kilobot/data_cluster/votermodel_16_exp/; echo Moved