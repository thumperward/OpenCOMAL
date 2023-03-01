FROM mcr.microsoft.com/vscode/devcontainers/base:debian

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    gcc \
    libc-dev \
    libncurses-dev \
    libreadline-dev \
    make \
    flex \
    bison
