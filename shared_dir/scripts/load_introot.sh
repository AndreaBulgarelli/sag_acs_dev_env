#!/bin/bash 

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please, enter the absolute INTROOT prefix"
  else

   INTROOT="$1/ACS_ACADA_INTROOT"

   if [ ! -d $INTROOT ]; then
      mkdir $INTROOT
   fi

   if [ -z "$(ls -A $INTROOT)" ]; then
      getTemplateForDirectory INTROOT $INTROOT
   fi

   export INTROOT="$INTROOT"
   source /alma/ACS-2020AUG/ACSSW/config/.acs/.bash_profile.acs

   export ACS_CDB="/shared_dir/Repos/sag-supervisor/sag_supervisor"

   echo "
   Environment loaded:
      INTROOT is $INTROOT
      ACS_CDB is $ACS_CDB
   "
fi

