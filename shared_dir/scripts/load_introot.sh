#!/bin/bash 

if [ $# -ne 2 ]
  then
   printf "Usage: \n source load_introot.sh INTROOT_PREFIX INTROOT_NAME"
   else 
   INTROOT_PREFIX=${1}
   INTROOT_NAME=${2}

   INTROOT="$INTROOT_PREFIX/$INTROOT_NAME"

   if [ ! -d $INTROOT ]; then
      mkdir $INTROOT
   fi

   if [ -z "$(ls -A $INTROOT)" ]; then
      getTemplateForDirectory INTROOT $INTROOT
   fi

   export INTROOT="$INTROOT"
   source /alma/ACS-2020AUG/ACSSW/config/.acs/.bash_profile.acs


   echo "
   Environment:
      INTROOT is $INTROOT
      ACS_CDB is $ACS_CDB
   "

fi

