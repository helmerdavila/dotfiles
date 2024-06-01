FROM fedora:40

RUN dnf -y update
RUN dnf -y install neofetch
RUN sh -c "$(curl -fsLS get.chezmoi.io)"

COPY . /root/.local/share/chezmoi

