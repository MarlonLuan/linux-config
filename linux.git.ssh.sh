#!/bin/bash

EMAIL="email@email.com"

# https://docs.github.com/pt/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key
ssh-keygen -t ed25519 -C "${EMAIL}"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# https://docs.github.com/pt/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account
cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard

xdg-open https://github.com/settings/ssh/new &
echo -n "Adicione a chave SSH ao Github, aperte qualquer tecla para continuar"
read -r

# ssh -T git@github.com
