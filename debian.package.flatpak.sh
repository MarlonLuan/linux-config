#!/bin/bash

apt update

apt install --no-install-recommends -y \
    flatpak \
    flatseal \
    gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.usebottles.bottles
