#!/bin/bash

echo "deb https://deb.debian.org/debian/ testing main contrib non-free-firmware non-free" | sudo tee /etc/apt/sources.list

echo "deb https://security.debian.org/debian-security testing-security main contrib non-free-firmware non-free" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ testing-updates main contrib non-free-firmware non-free" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ testing-backports main contrib non-free-firmware non-free" | sudo tee -a /etc/apt/sources.list
