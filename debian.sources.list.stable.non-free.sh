#!/bin/bash

echo "deb https://deb.debian.org/debian/ stable main contrib non-free-firmware non-free" | sudo tee /etc/apt/sources.list

echo "deb https://security.debian.org/debian-security stable-security main contrib non-free-firmware non-free" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ stable-updates main contrib non-free-firmware non-free" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ stable-backports main contrib non-free-firmware non-free" | sudo tee -a /etc/apt/sources.list
