FROM ubuntu:xenial

RUN apt update && apt install -y \
    git \
    xz-utils \
    bzip2 \
    python3

