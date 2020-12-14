#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please, enter the name of the container"
  else
    LOG="$DIR/tmp_logs/acsStartContainer_$1.log"
    LOG_PID="$DIR/tmp_logs/acsStartContainer_$1_pid.log"

    echo "starting $1 python container -> log in $LOG"
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    acsStartContainer -py "$1" > "$LOG" 2>&1 &
    echo "$!" > "$LOG_PID" 
    echo "Container $1 is started"
fi



