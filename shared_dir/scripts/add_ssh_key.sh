#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please, enter the private key name"
  else
    eval $(ssh-agent -s)
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    ssh-add $DIR/../.ssh/$1
fi

