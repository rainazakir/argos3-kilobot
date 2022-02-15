#!/bin/sh
#SBATCH -J jobname
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=1gb                     # Job memory request
#SBATCH --time=hrs:min:00             # Time limit
#SBATCH -q short
#SBATCH --output=/home/rzakir/log/logfile.txt

argos3 -c argosfile; echo Finished

mv savefile wheresave; echo Moved
