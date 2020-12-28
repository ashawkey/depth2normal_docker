# opencv
FROM ubuntu:14.04

MAINTAINER haw

RUN apt update \
    && apt install -y cmake g++ wget unzip pkg-config \
    && cd ~ \
    && wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.9/opencv-2.4.9.zip \
    && unzip opencv-2.4.9.zip \
    && cd opencv-2.4.9 \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make \
    && make install \
    && ldconfig 
