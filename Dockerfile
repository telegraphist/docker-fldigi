FROM centos:latest

LABEL maintainer="Joerg Klein <kwp.klein@gmail.com>" \
      description="Docker base image for Fldigi"

RUN dnf update -y  \
    && dnf install -y alsa-lib alsa-utils pulseaudio \
    && dnf install -y epel-release \
    && dnf install -y fldigi \
    && dnf clean all \
    && rm -rf /var/cache/dnf

