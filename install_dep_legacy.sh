#!/usr/bin/env bash

# Install all the dependencies needed to build OpenHD from source.
# TODO do we need libgstreamer1.0-dev and libgstreamer-plugins-base1.0-dev ?
   
echo "deb http://deb.debian.org/debian buster-backports main" >> /etc/apt/sources.list.d/backports.list
apt update 

apt -y install build-essential autotools-dev automake libtool autoconf \
            libpcap-dev libsodium-dev \
            libboost-all-dev libasio-dev \
            libgstreamer-plugins-base1.0-dev \
            libusb-1.0-0-dev \
            libv4l-dev \
            cmake \
            git \
            apt-transport-https \
            curl \
            git \
            ruby-dev \
            libboost-filesystem1.74-dev \
            python3-pip \
            libnl-3-dev cmake snapd libnl-genl-3-dev \
            libnl-route-3-dev || exit 1

            # 


gem install fpm
pip install --upgrade cloudsmith-cli
