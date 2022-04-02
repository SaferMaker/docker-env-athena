FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install --yes \
    wget vim

RUN mkdir athena
RUN cd ./athena
RUN wget -O athena-linux.tar.gz http://proofcentral.org/athena/1.4/resources/athena-linux.tar.gz
RUN tar -xzf athena-linux.tar.gz
RUN export ATHENA_HOME=$PWD
