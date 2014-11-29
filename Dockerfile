FROM aussielunix/fpm-cook:ubuntu_14.04

MAINTAINER Mick Pollard <aussielunix@gmail.com>

ADD . /workdir
WORKDIR /workdir

CMD fpm-cook package -t deb -p ubuntu recipe.rb
