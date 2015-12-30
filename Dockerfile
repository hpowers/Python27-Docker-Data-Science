FROM buildpack-deps:jessie

RUN apt-get update && apt-get install -y \
    python-pip \
    python2.7-dev \
    libblas-dev \
    liblapack-dev \
    gfortran \
    python-matplotlib

# python packages
RUN pip install ipython==1.2.1
RUN pip install pandas==0.16.2
RUN pip install scipy==0.13.3
