FROM ubuntu:latest
MAINTAINER kaosf <ka.kaosf@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN set -ex && \
  apt-get update && \
  apt-get install -y --no-install-recommends xfce4 tightvncserver language-pack-ja fonts-vlgothic && \
  apt-get clean && \
  rm -rf /var/lib/apt/*
