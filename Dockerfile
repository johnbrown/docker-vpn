FROM ubuntu:16.04

ARG DEBIAN_FRONTEND="noninteractive"
ENV TERM="xterm" LANG="C.UTF-8" LC_ALL="C.UTF-8"

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Ubuntu-16.04 version:- ${VERSION} Build-date:- ${BUILD_DATE}"

ENTRYPOINT ["/init"]

# install packages
RUN \
 apk add --no-cache \
	curl

# add local files
#COPY root/ /
