#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

LOG="$DIR/tmp_logs/last_acsStart.log"
LOG_PID="$DIR/tmp_logs/acs_pid.log"

echo "starting ACS -> log in $LOG"
acsStart > "$LOG" 2>&1 &
echo "$!" > "LOG_PID" 
echo "ACS is started"

