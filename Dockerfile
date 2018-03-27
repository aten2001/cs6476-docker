FROM ubuntu:16.04

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    python2.7 \
    python2.7-dev \
    python-numpy \
    python-scipy \
    libgtk2.0-dev \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libtbb2 \
    libtbb-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libjasper-dev \
    libdc1394-22-dev \
    openexr \
    python-pip \
    python-matplotlib \
    && apt-get autoremove \
    && apt-get clean

COPY opencv_2.4.13-1_amd64.deb /tmp/
    
RUN dpkg -i /tmp/opencv_2.4.13-1_amd64.deb
RUN pip install nelson

CMD []
ENTRYPOINT ["/usr/bin/python2.7"]

