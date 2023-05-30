FROM ubuntu:jammy

RUN apt update -y
RUN apt install -y curl neofetch sudo software-properties-common
RUN curl -sfL https://git.io/chezmoi | sh

COPY . /root/.local/share/chezmoi

ENV PATH="$PATH:/bin"
