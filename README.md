# Python 2.7 image for Machine Learning


**README in progress:**

I used to use a VM for  python work, but recently decided it would be cooler if I could get everything working in Docker.

This is Python 2.7.11 with the following extras

* ipython
* numpy
* pandas
* scipy
* matplotlib

feeze.txt is a `pip freeze` from my VM before I trashed it

What makes this image special is python and matplotlib are compiled with tkinter support so matplotlib uses the correct backend to send graphs to $DISPLAY.

There is also `Dockerfile_alt` if you want a much smaller image and don't require TkInter.

[Docker Hub Image](https://hub.docker.com/r/hunter/pythonscience/)

---------------------------------------

## Build the image

`docker build -t hunter/pythonscience .`

---------------------------------------

## Install image from Docker Hub

`docker pull hunter/pythonscience`

---------------------------------------

## Run container with local src volume

`docker run -itv <abs path to local volume>:/data hunter/pythonscience bash`

---------------------------------------

## Run container with GUI support on OSX

### - First time
`brew install socat`  
`brew cask install xquartz`  

### - Every time
`open -a XQuartz`  
`socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`  
`docker run -e DISPLAY=<docker host IP>:0 hunter/pythonscience bash`