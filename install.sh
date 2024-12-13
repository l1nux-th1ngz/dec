#!/bin/bash

# Make all .sh files in the directory executable
echo "Making all .sh files executable"
chmod +x *.sh

echo "Starting install scripts, the script will wait while each runs."

# Run installation scripts in sequence, waiting 7 seconds between each
for script in 1-xorg.sh 2-2-bspwm.sh 3-diskutils.sh 4-bluetooth.sh 5-utils.sh 6-polkit.sh 7-zsh.sh; do
    if [ -f "$script" ]; then
        echo "Running $script..."
        sh "$script"
        echo "Waiting for 7 seconds before running the next script..."
        sleep 7
    else
        echo "Script $script not found."
    fi
done

echo "All scripts have been executed."
