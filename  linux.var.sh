#!/bin/bash

su -

USUARIO="marlon"

VAR_EDITOR="export EDITOR=micro"
VAR_VISUAL="export VISUAL=micro"

echo "${VAR_EDITOR}" | sudo tee -a /etc/profile.d/$USUARIO.sh
echo "${VAR_VISUAL}" | sudo tee -a /etc/profile.d/$USUARIO.sh

. ~/.bashrc
