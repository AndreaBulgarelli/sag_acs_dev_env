#!/bin/bash 

if [ $# -eq 0 ]
  then
      printf "\nUsage: \n source load_cdb.sh PATH_TO_ACS_CDB"
  else
   CDB_PATH=${1:-/shared_dir/Repos/sag-supervisor/sag_supervisor}

   export ACS_CDB=$CDB_PATH

   echo "
   Environment:
      INTROOT is $INTROOT
      ACS_CDB is $ACS_CDB
   "

fi

