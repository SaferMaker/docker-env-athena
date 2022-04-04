# Dockerized Environment for Athena

# Usage Instructions

## Pre-requisites
Ensure that docker is installed. After installing docker, ensure that you have created a `docker` group and that you've added yourself to the docker group. Instructions for setting up docker permissions can be found [here](https://docs.docker.com/engine/install/linux-postinstall/). Doing this will allow you to run the Athena container without `sudo` and to be able to utilize the `mnt` directory.

## Usage

### Setup

To prepare the docker image and run it in the background, use `make all`.

To ensure that athena is working, use `make check-athena`.

### Run new athena file
You can add new `.ath` files to the `mnt` directory. When you do so, you can run `make <file_name>.ath`.

### Shutdown

To stop the container, clean up the image, and remove the `mnt` directory, you can do `make clean`. This will also create a new directory in the root dir of this repository called `cached` and will copy the files in the `mnt` directory to `cached` so you do not accidentally lose your work. 


### Misc

*Build image without running*: `make image`
*Run container without rebuilding image*: `make run`
*Run the container in interactive mode*: `make run-interactive`
*Rebuild mount directory after deleting*: `make mount-dir`
