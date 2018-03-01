# !/usr/bin/env bash

# Set environment variables for later use in this script
eval $(docker-machine env docker2)

# Define custom functions to invoke our docker containers to run custom code in python or ipython with all dependencies stored in the docker image
kpython(){
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python python "$@"
}
ikpython() {
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python ipython
}

# The custom function definition for initiating the jupyter notebook depends on the current OS

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform   
    echo 'Detected Darwin OS'

	kjupyter() {
	    (sleep 3 && open "http://$(docker-machine ip docker2):8888")&
	        docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --allow-root --no-browser --ip="\*" --notebook-dir=/tmp/working --NotebookApp.token=''
	}


elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    echo 'Detected Linux OS'

	kjupyter() {
	    (sleep 3 && xdg-open "http://$(docker-machine ip docker2):8888")&
	        docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --allow-root --no-browser --ip="\*" --notebook-dir=/tmp/working --NotebookApp.token=''
	}

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    echo 'Detected Win32bit OS'

    kjupyter() {
        (sleep 3 && start "http://$(docker-machine ip docker2):8888")&
            docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --allow-root --no-browser --ip="0.0.0.0" --notebook-dir=/tmp/working --NotebookApp.token=''
    }

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    echo 'Detected Win64bit OS'

    kjupyter() {
        (sleep 3 && start "http://$(docker-machine ip docker2):8888")&
            docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --allow-root --no-browser --ip="0.0.0.0" --notebook-dir=/tmp/working --NotebookApp.token=''
    }

fi

# Execute functions down here

# kpython
# ikpython
 kjupyter

# For Debugging
# Gives you a root terminal within the docker image
term () {
    docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python
}

# term