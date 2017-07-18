FROM ubuntu:17.04

ARG DEBIAN_FRONTEND="noninteractive"
ENV TERM="xterm" LANG="C.UTF-8" LC_ALL="C.UTF-8"

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Ubuntu-17.04 version:- ${VERSION} Build-date:- ${BUILD_DATE}"


RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# install packages
RUN \
 apk add --no-cache \
	curl


# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root
