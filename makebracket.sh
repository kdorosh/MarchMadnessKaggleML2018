# !/usr/bin/env bash

# Set environment variables for later use in this script
eval $(docker-machine env docker2)

# Define custom functions to invoke our docker containers to run custom code in python or ipython with all dependencies stored in the docker image
kpython(){
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python python "$@"
}

# Execute functions down here
kpython 'makebracket.py'