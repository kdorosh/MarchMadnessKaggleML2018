# March Madness - Kaggle Machine Learning Contest - 2018

Predicting the NCAA basketball tournament games using Machine Learning for Kaggle's (sponsored by Google Cloud) [contest](https://www.kaggle.com/c/mens-machine-learning-competition-2018).

For more detail, check out my [writeup](https://github.com/kdorosh/MarchMadnessKaggleML2018/blob/master/writeup/writeup.md).

## Getting Started

You can run the IPython script in a Jupyter notebook locally or you can run it in [my kernel](https://www.kaggle.com/kdorosh/basic-starter-kernel-ncaa-men-s-dataset) on Kaggle's cloud resources.

### Prerequisites

Install [Docker](https://store.docker.com/search?type=edition&offering=community) or [Docker Toolbox](https://docs.docker.com/toolbox/overview/#ready-to-get-started)

* Note: If you use Docker Toolbox, you must clone the repo underneath /Users (MacOS) or C:\Users (Windows), or else docker volume mounting WILL NOT WORK.

Once done, create a new docker machine with more processing power, disk memory, and RAM than the default machine (or as much as you can afford):

```
$ docker-machine create -d virtualbox --virtualbox-disk-size "50000" --virtualbox-cpu-count "4" --virtualbox-memory "8092" docker2
```

Now pull the docker image with all the python, ipython, and jupyter dependencies my notebook requires. We will run the notebook in this docker container.

This image is large, ~15GB, and will take a while to download/extract. Go grab a snack :)

```
$ docker pull kaggle/python
```

### Setting up the Data

Extract the following datasets:

* `input\ZippedData\DataFiles.zip` to `input\`, and then extract
* `input\ZippedData\Stage2UpdatedDataFiles.zip` to `input\`

You will need to overwrite files of the same name when you extract the second dataset.

### Running the Program

Start your larger, more powerful, docker container.

```
$ docker-machine start docker2
```

Run the Jupyter notebook.

If you are running Windows, you must run `start.sh` from within the docker quickstart terminal.

```
sh start.sh
```

This will open a locally hosted jupyter notebook in your web browser. Open the March Madness notebook, located at `nbs/script.ipynb`. Put the kernel in a "trusted" state and run it.

Running the whole script takes a couple minutes on my machine.

Once done, the script will output predictions in `nbs\predictions.csv`.

CTR-C (twice) in the terminal where you started the jupyter notebook server kills the server.

Kill the docker machine when you are all done:

```
$ docker-machine stop docker2
```

## Generating a Bracket

To generate a bracket using the `nbs\predictions.csv` generated by running the IPython notebook, run `sh makebracket.sh`.

This will run in the docker container, and generate an `output.png` file for this year's bracket. Your docker machine `docker2` must be running for this script to run.

## Built With

* [Scikit-learn](http://scikit-learn.org/stable/) - Python Machine Learning library
* [Kaggle](https://www.kaggle.com/juliaelliott/basic-starter-kernel-ncaa-men-s-dataset/data) - NCAA data from 1985-2018, initial basic logistic regression notebook forked from Kaggle

## Authors

* **Kevin Dorosh** - *Main Dev*

## License

This project is licensed under the BSD License - see the [3-Clause BSD website](https://opensource.org/licenses/BSD-3-Clause) for details

The data provided is subject to all provisions set by the NCAA. It is not to be used for gambling - for more details, read the [Kaggle rules](https://www.kaggle.com/c/mens-machine-learning-competition-2018/rules).

## Acknowledgments

* Kaggle for running this tournament
* Andrew Ng and his [MOOC](https://www.coursera.org/learn/machine-learning/home/welcome) that I took to learn ML basics
* My professor Ming Chow, who enabled this self-driven study