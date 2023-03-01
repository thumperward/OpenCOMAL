FROM mcr.microsoft.com/vscode/devcontainers/base:debian

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install --no-install-recommends \
    gcc \
    libc-dev \
    libncurses-dev \
    libreadline-dev \
    make \
    flex \
    bison
