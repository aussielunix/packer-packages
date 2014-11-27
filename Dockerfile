FROM aussielunix/fpm-cook:ubuntu_14.04

MAINTAINER Mick Pollard <aussielunix@gmail.com>

RUN apt-get install unzip
RUN mkdir /workdir
ADD . /workdir
WORKDIR /workdir
VOLUME /workdir

RUN fpm-cook package -t deb -p ubuntu recipe.rb
