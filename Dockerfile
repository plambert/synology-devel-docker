FROM ubuntu:bionic

ENV DSM_VERSION=6.2
ENV DSM_PLATFORM=x64

RUN apt-get update && apt-get install -y \
      git \
      xz-utils \
      bzip2 \
      python3 \
      vim

RUN mkdir -p /toolkit

COPY toolkit_tarballs /toolkit/toolkit_tarballs

WORKDIR /toolkit

RUN git clone https://github.com/plambert/pkgscripts-ng.git pkgscripts-ng

WORKDIR /toolkit/pkgscripts-ng

    # && \
    # cd pkgscripts && \
    # ./EnvDeploy -v ${DSM_VERSION} -p ${DSM_PLATFORM}

