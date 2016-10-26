#####
##### Dockerfile for Ubuntu 16.04 official image with the CloudPassage Halo daemon installed and with it's dependencies
#####

FROM ubuntu:16.04
MAINTAINER maklian@cloudpassage.com

RUN apt-get update && \
    apt-get install -y \
    curl \
    apt-transport-https \
    initscripts \
    wget

RUN echo 'deb https://production.packages.cloudpassage.com/debian debian main' | tee /etc/apt/sources.list.d/cloudpassage.list > /dev/null
RUN curl https://packages.cloudpassage.com/cloudpassage.packages.key | apt-key add -
RUN apt-get update && apt-get install -y cphalo
