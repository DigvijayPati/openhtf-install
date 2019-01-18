FROM debian:stable-slim

RUN apt-get update \
    && apt-get -y install git python3-pip python3-dev \
      libffi-dev protobuf-compiler libprotobuf-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install wheel && pip3 wheel git+https://github.com/google/openhtf.git@master --wheel-dir=/svc/wheels
RUN apt-get update \
    && pip3 install --no-index /svc/wheels/* \
    && rm -rf /svc

