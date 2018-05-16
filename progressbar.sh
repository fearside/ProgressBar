#!/bin/bash
# Author : Teddy Skarin
# Forked by : Mike Turley (added prefix argument)

# 1. Create ProgressBar function
# 1.1 Input is currentState($1) totalState($2) [prefix($3)]
function ProgressBar {
# Process data
	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
# Build progressbar string lengths
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example (default prefix):
# 1.2.1.1 Progress : [########################################] 100%
# 1.2.2 Output example (alternate prefix):
# 1.2.2.1 Disk Usage : [##############################          ] 90%
printf "\r${3:-Progress} : [${_done// /#}${_left// /-}] ${_progress}%%"

}
