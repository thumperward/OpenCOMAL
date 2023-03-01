# Running files from here:
# enter "samples/examples/varbaal.lst"
# run
# to exit from the image:
# quit
# y

FROM mcr.microsoft.com/vscode/devcontainers/base:debian as builder

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install --no-install-recommends \
  gcc \
  libc-dev \
  libncurses-dev \
  libreadline-dev \
  make \
  flex \
  bison

COPY src /src/
COPY tools /tools/

WORKDIR /src/
RUN make

FROM mcr.microsoft.com/vscode/devcontainers/base:debian

COPY --from=builder /bin/opencomal /usr/bin/opencomal
COPY samples /samples

ENTRYPOINT [ "/usr/bin/opencomal" ]