#!/bin/bash

VAR_EDITOR="export EDITOR=micro"
VAR_VISUAL="export VISUAL=micro"

echo "${VAR_EDITOR}" | sudo tee -a ~/.profile
echo "${VAR_VISUAL}" | sudo tee -a ~/.profile

. ~/.bashrc
