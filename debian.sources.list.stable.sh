#!/bin/bash

echo "deb https://deb.debian.org/debian/ stable main" | sudo tee /etc/apt/sources.list

echo "deb https://security.debian.org/debian-security stable-security main" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ stable-updates main" | sudo tee -a /etc/apt/sources.list

echo "deb https://deb.debian.org/debian/ stable-backports main" | sudo tee -a /etc/apt/sources.list
