#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend

sudo rm /var/cache/apt/archives/lock7

sudo apt update

sudo apt upgrade -y

sudo apt dist-upgrade -y

sudo apt full-upgrade -y

sudo apt autoremove -y

sudo apt autoclean -y
 