#!/bin/bash

debian_release="stable"

debian_sections="main non-free non-free-firmware"

echo "deb https://deb.debian.org/debian/ ${debian_release} ${debian_sections}" | sudo tee /etc/apt/sources.list
echo "deb-src https://deb.debian.org/debian/ ${debian_release} ${debian_sections}" | sudo tee -a /etc/apt/sources.list

echo "deb https://security.debian.org/debian-security ${debian_release}-security ${debian_sections}" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://security.debian.org/debian-security ${debian_release}-security ${debian_sections}" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ ${debian_release}-updates ${debian_sections}" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://deb.debian.org/debian/ ${debian_release}-updates ${debian_sections}" | sudo tee -a /etc/apt/sources.list
