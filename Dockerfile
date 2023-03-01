FROM mcr.microsoft.com/vscode/devcontainers/base:debian

COPY bin/opencomal /usr/bin/opencomal

ENTRYPOINT [ "/usr/bin/opencomal" ]