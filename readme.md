# March Madness - Kaggle Machine Learning Contest - 2018

Predicting the NCAA basketball tournament games using Machine Learning for Kaggle's (sponsored by Google Cloud) [contest](https://www.kaggle.com/c/mens-machine-learning-competition-2018).

## Getting Started

Extract the .zip files in data/zippedFiles to data.

Clone the repository and run `python3 mm.py`.

### Prerequisites

Install python3

### Installing Python

Linux:

```
sudo apt-get update
sudo apt-get install python3.6
```

MacOS: (install Homebrew and then python)
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install python3
```

Windows: (from cmd.exe, install Chocolatey and then python)
```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install python
```


## Running the tests

No tests to speak of yet..

## Built With

* [Scikit-learn](http://scikit-learn.org/stable/) - Python Machine Learning library
* [Kaggle](https://www.kaggle.com/juliaelliott/basic-starter-kernel-ncaa-men-s-dataset/data) - NCAA data from 1985-2018, provided by Kaggle


## Versioning

We use [SemVer](http://semver.org/) for versioning. 

## Authors

* **Kevin Dorosh** - *Main Dev*

## License

This project is licensed under the BSD License - see the [3-Clause BSD website](https://opensource.org/licenses/BSD-3-Clause) for details

The data provided is subject to all provisions set by the NCAA. It is not to be used for gambling - for more details, read the [Kaggle rules](https://www.kaggle.com/c/mens-machine-learning-competition-2018/rules).

## Acknowledgments

* Kaggle for running this tournament
* Andrew Ng and his [MOOC](https://www.coursera.org/learn/machine-learning/home/welcome) that I took to learn ML basics
* My professor Ming Chow, who enabled this self-driven study