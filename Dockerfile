FROM jenkins:latest
MAINTAINER Linki <linki+docker.com@posteo.de>

ENV DOCKER_VERSION 1.9.1

USER root

RUN apt-get update && apt-get install -y git && apt-get clean

# Install Docker binary
RUN wget -nv https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION -O /usr/bin/docker && \
  chmod +x /usr/bin/docker

USER jenkins
