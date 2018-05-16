#!/bin/bash

SCRIPT=`realpath $0`; DIRNAME=`dirname $SCRIPT`
source $DIRNAME/progressbar.sh

# Variables
_start=1

# This accounts as the "totalState" variable for the ProgressBar function
_end=100

# Proof of concept
for number in $(seq ${_start} ${_end})
do
	sleep 0.1
	ProgressBar ${number} ${_end}
done
printf '\nFinished!\n'

# Proof of concept with alternate prefix (optional)
_dfk=`df -k ~`
_fs=`echo "${_dfk}" | awk 'NR == 2 { print $1 }'`
_kbused=`echo "${_dfk}" | awk 'NR == 2 { print $3 }'`
_kbfree=`echo "${_dfk}" | awk 'NR == 2 { print $4 }'`
_kbtotal=`echo ${_kbused} ${_kbfree} | awk '{ sum = ($1 + $2) ; print sum }'`

printf "\nFilesystem   : ${_fs}"
printf "\nKB Used      : ${_kbused}"
printf "\nKB Available : ${_kbfree}"
printf "\n" # Because ProgressBar eats a newline
ProgressBar ${_kbused} ${_kbtotal} "Disk Usage  "
