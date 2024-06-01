FROM ubuntu:noble

# tzdata fix for Docker
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y
RUN apt install -y curl neofetch sudo software-properties-common
RUN sh -c "$(curl -fsLS get.chezmoi.io)"


COPY . /root/.local/share/chezmoi

ENV PATH="$PATH:/bin"
