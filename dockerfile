FROM fedora:latest

COPY . /root/.config/nvim/

RUN dnf -y update && dnf clean all
RUN dnf -y install git neovim clangd nodejs && dnf clean all
