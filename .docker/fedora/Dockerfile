FROM fedora:38

RUN dnf -y update
RUN dnf -y install neofetch
RUN sh -c "$(curl -fsLS get.chezmoi.io)"

COPY . /root/.local/share/chezmoi

