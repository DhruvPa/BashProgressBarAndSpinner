#!/bin/bash

#########################################################################
# Script to display a Spinner while waiting for a operation to complete.
# Author : https://github.com/iLodeStar
#########################################################################

#Spinner variables
spinnerPattern="/-\|"
spinnerCount=0
spinningDone=" "


#########################################################################
# Name:spin
# Description: Method to display a spinner for process under execution 
#########################################################################
spin() {
   echo -ne '\r' "${spinnerPattern:spinnerCount++:1}"
   ((spinnerCount==${#spinnerPattern})) && spinnerCount=0
}

#########################################################################
# Name:endspin
# Description: Method to display a spinner after process executes 
#########################################################################
endSpin() {
   echo -ne '\r' "$spinningDone"
}


#########################################################################
#Demo Main Method to call Spinner
#Replace this code with actual logic with appropriate position of 
#spin and endSpin
#########################################################################
example=0
echo "Spinner Started"
while [[ ${example} -ne 100 ]]; do
    spin
    example=$((example + 1))
    sleep 0.3s
done
endSpin
echo "spinning Done"
