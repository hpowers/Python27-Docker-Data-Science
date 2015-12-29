# Python 2.7 image for Machine Learning


README in progress.

I used to use a VM for my python work, but recently decided it would be cooler if I could get everything working in Docker.

This is Python 2.7.11 with the following extras

* ipython
* numpy
* scipy
* matplotlib

feeze.txt is a `pip freeze` from my VM before I trashed it

## build the image

`docker build -t hunter/pythonscience .`

## run a container with local src volume

`docker run -itv /Users/hunter/Desktop/PythonDS/data:/data hunter/pythonscience bash`

## run a container with XWindows support on OSX

### first time
`brew install socat`  
`brew cask install xquartz`  

### every time
`open -a XQuartz`  
`socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`  
`docker run -e DISPLAY=<docker host IP>:0 hunter/pythonscience bash`