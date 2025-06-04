#!/bin/bash
#SBATCH -J processing-template
#SBATCH -p edr
#SBATCH -t 1-00:00
#SBATCH -N 1 
#SBATCH -c 30
#SBATCH --mem=40000
#send email when job ends or fails
#SBATCH --mail-user=<<username>>@mit.edu
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=END

# Load your environment
source test.env

# Run your Python script with the desired parameters
# replace with your name
python script.py --name "Your Name"