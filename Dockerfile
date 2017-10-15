FROM ubuntu:xenial

WORKDIR /toolkit

RUN apt update && apt install -y \
      git \
      xz-utils \
      bzip2 \
      python3 && \
    git clone https://github.com/SynologyOpenSource/pkgscripts-ng.git pkgscripts && \
    cd pkgscripts && \
    ./EnvDeploy -v 6.1 -p x64

