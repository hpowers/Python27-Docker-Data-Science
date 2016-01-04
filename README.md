# Python 2.7 image for Machine Learning

**README in progress:**

I used to use a VM for Python work, but recently decided it would be cooler if I could get everything working in Docker.

This is Python 2.7.9 with the following extras

* IPython
* NumPy
* Pandas
* SciPy
* Matplotlib

What makes this image special is Python and Matplotlib are compiled with TkInter support so Matplotlib uses the correct backend to send graphs to $DISPLAY.

Notes:

- [Image on Docker Hub](https://hub.docker.com/r/hunter/pythonscience/)
- [feeze.txt](https://github.com/hpowers/Python27-Docker-Data-Science/blob/master/freeze.txt) is a `pip freeze` from my VM before I trashed it
- [Dockerfile_alt](https://github.com/hpowers/Python27-Docker-Data-Science/blob/master/Dockerfile_alt) builds a smaller image without TkInter support

---------------------------------------

## Build the image

`docker build -t hunter/pythonscience .`

## Install image from Docker Hub

`docker pull hunter/pythonscience`

## Run container with active folder as /data volume

`docker run --rm -itv $(pwd):/data hunter/pythonscience bash`

## Run container with GUI support on OSX

### - First time
`brew install socat`
`brew cask install xquartz`

### - Every time
`open -a XQuartz`  
`socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`  
`docker run -e DISPLAY=<docker host IP>:0 hunter/pythonscience bash`

alternate with volume mount  
`docker run --rm -itv $(pwd):/data -e DISPLAY=$(docker-machine ip default):0 hunter/pythonscience bash`