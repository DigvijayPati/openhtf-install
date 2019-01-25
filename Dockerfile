FROM debian:stable-slim

RUN apt-get update \
    && apt-get -y install git vim python3-pip python3-dev \
      libffi-dev protobuf-compiler libprotobuf-dev \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \ 
    && pip3 install --no-cache-dir openhtf

