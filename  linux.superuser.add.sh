#!/bin/bash

su -

USUARIO="admin"

echo "$USUARIO ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers.d/$USUARIO

exit
