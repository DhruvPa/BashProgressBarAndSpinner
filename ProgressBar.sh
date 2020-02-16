#!/bin/bash

#########################################################################
# Script to display a progressive bar while waiting for a operation to complete.
# Author : Dhruv Pathak
#########################################################################

#Progress bar variables
updateBarAfter=4
updateBar="##"
Progress="##"
progressCounter=0

#########################################################################
# Name:progress
# Description: Method to display a progress bar for process under execution
#########################################################################
progress() {
    echo -ne '\r' "${Progress}"
    progressCounter=$((progressCounter + 1))
    if [[ $progressCounter == 4 ]]; then
        Progress=$Progress$updateBar
    fi
    ((progressCounter == $updateBarAfter)) && progressCounter=0
}

#########################################################################
# Name:finalProgress
# Description: Method to display a progress bar after process executes
#########################################################################
finalProgress() {
    echo -ne '\r' "$Progress(100%)"
}

#########################################################################
#Demo Main Method to call progress
#Replace this code with actual logic with appropriate position of 
#progress and finalProgress
#########################################################################
example=0
while [[ ${example} -ne 100 ]]; do
    progress
    example=$((example + 1))
    sleep 0.3s
done
finalProgress
