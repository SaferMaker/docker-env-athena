FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install --yes \
    wget vim

RUN mkdir athena
RUN cd athena && \
  wget -O athena-linux.tar.gz http://proofcentral.org/athena/1.4/resources/athena-linux.tar.gz && \
  tar -xzf athena-linux.tar.gz
ENV ATHENA_HOME /athena
ENV PATH /athena/:$PATH
RUN touch minisat_out.txt

