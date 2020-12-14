#!/bin/bash

docker build \
    --tag 2020.08.0-centos7-sag \
    --build-arg "UID=$(id -u)" \
    --build-arg "GID=$(id -g)" \
    ./
