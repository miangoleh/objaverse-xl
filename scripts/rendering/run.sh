source /localscratch/smh31/envs/miniconda/etc/profile.d/conda.sh
conda activate objaverse2

#!/bin/bash

# Define the command you want to run
command_to_run="python main_mahdi.py --processes 8 --gpu_devices [0,2,4]"

# Loop until the command succeeds (exit status 0)
until $command_to_run; do
    echo "Command failed with exit status $?. Retrying in 5 seconds..."
    sleep 5
done

echo "Command succeeded."