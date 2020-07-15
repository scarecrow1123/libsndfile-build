FROM centos

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

LABEL description="Docker executable for building libsndfile binaries"
LABEL maintainer="ananda.seelan@gmail.com"
LABEL version="1.0"

USER root

RUN yum install -y yum-utils && yum-config-manager --enable \* && \
      yum-config-manager --disable c8-media-BaseOS && \
      yum-config-manager --disable c8-media-AppStream && \
      yum update -y && yum install -y git gcc-c++ cmake make \
      autoconf autogen alsa-lib-devel flac-devel libogg-devel \
      libtool libvorbis-devel opus-devel pkg-config python36

RUN ln -fs /usr/bin/python3 /usr/bin/python

WORKDIR /usr/libsndfile

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

STOPSIGNAL SIGINT

ENTRYPOINT ["/entrypoint.sh"]
