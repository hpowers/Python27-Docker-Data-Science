FROM python:2.7.11

# scipy dev dependencies
RUN apt-get update && apt-get install -y \
    libblas-dev \
    liblapack-dev \
    gfortran

# python packages
RUN pip install ipython==1.2.1
RUN pip install numpy==1.8.2
RUN pip install scipy==0.13.3
RUN pip install matplotlib==1.3.1
