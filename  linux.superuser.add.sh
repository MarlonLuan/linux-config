#!/bin/bash

su -

USUARIO="marlon"

echo "$USUARIO ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers.d/$USUARIO

exit
