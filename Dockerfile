FROM aussielunix/fpm-cook:ubuntu_14.04

MAINTAINER Mick Pollard <aussielunix@gmail.com>

RUN mkdir /workdir
ADD . /workdir
WORKDIR /workdir

RUN fpm-cook -t deb -p ubuntu recipe.rb
