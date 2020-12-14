# sag_acs_dev_env

This repository contains 
* a custom docker image based on https://github.com/ACS-Community/ACS-Docker-Image 
* some utility bash scripts

## Requirements
* Docker 

## First setup

You need to build the custom image (you can change the tag inside build.sh):
```bash
cd sag_acs_dev_env/custom-recipe
source build.sh
```
Let's enter the container (the sag_acs_dev_env/shared_dir will be shared with the container):
```bash
cd sag_acs_dev_env
source start.sh
```
After the start.sh you will be at /shared_dir inside the container.

### ssh authentication
In order to download the acada repositories you may use ssh authentication. Put your public and private keys inside the ".ssh" folder. You can enable ssh authentication with:
```bash
source start.sh
4cb59c3449f8 almamgr:/shared_dir > source sag_acs_dev_env/shared_dir/scripts/enable_ssh_key.sh foo
```
You will need a private key file called "foo" inside the ".ssh" folder.

### Get the source code
Let's clone the repositories inside the "Repos" folder:
```bash
4cb59c3449f8 almamgr:/shared_dir > cd Repos
4cb59c3449f8 almamgr:/shared_dir > git clone git@gitlab.cta-observatory.org:cta-computing/acada/science-alert-generation.git
4cb59c3449f8 almamgr:/shared_dir > git submodule update --init
```


## How to use the environment

Everytime you enter the container you need to:
* Load INTROOT:
```bash
source scripts/load_introot.sh INTROOT_PATH INTROOT_NAME
```
* Load CDB:
```bash
source scripts/load_cdb.sh CDB_PATH
```
You also write your own script such as scripts/sag_env.sh
* Enable ssh authentication if you want to use git

