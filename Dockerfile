FROM ubuntu:latest
MAINTAINER kaosf <ka.kaosf@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update && \
  apt-get install -y --no-install-recommends xfce4 tightvncserver language-pack-ja xfonts-base fonts-vlgothic && \
  apt-get clean && \
  rm -rf /var/lib/apt/*
