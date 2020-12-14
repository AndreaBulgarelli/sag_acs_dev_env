#!/bin/bash

mkdir -p shared_dir
mkdir -p sagsupervisor_dir


docker run --rm -it \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
   -v $PWD/shared_dir:/shared_dir \
   -v $PWD/sagsupervisor_dir:/home/almamgr/sag-supervisor \
   -w /shared_dir \
   2020.08.0-centos7-sag:latest
