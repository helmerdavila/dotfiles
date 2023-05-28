FROM ubuntu:jammy

RUN apt update -y
RUN apt install curl git neofetch sudo -y
