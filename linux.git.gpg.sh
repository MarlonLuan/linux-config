#!/bin/bash

USERNAME=UserName
EMAIL=email@email.com

# https://docs.github.com/pt/authentication/managing-commit-signature-verification/generating-a-new-gpg-key#generating-a-gpg-key
echo "Key-Type: RSA" > gpg-gen-key-script;
echo "Key-Length: 4096" >> gpg-gen-key-script;
echo "Subkey-Type: RSA" >> gpg-gen-key-script;
echo "Subkey-Length: 4096" >> gpg-gen-key-script;
echo "Name-Real: ${USERNAME}" >> gpg-gen-key-script;
echo "Name-Email: ${EMAIL}" >> gpg-gen-key-script;
echo "Expire-Date: 0" >> gpg-gen-key-script;

gpg --batch --gen-key gpg-gen-key-script;

rm gpg-gen-key-script

gpg --list-secret-keys --keyid-format=long;

key_line=$(gpg --list-secret-keys --keyid-format LONG | grep '^sec')

# key_id=$(echo "$key_line" | grep -oP '(?<=/)\w+')
key_id=$(echo "$key_line" | grep -o '/[[:alnum:]]*' | cut -c 2-)

gpg --armor --export "$key_id" | xclip -selection clipboard

xdg-open https://github.com/settings/gpg/new &
echo -n "Adicione a chave GPG ao Github, aperte qualquer tecla para continuar"
read -r

# ssh -T git@github.com
