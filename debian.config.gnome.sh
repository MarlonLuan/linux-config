#!/bin/bash

gsettings set org.gnome.desktop.calendar show-weekdate true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.privacy disable-camera true
gsettings set org.gnome.desktop.privacy disable-microphone true
gsettings set org.gnome.desktop.privacy disable-sound-output true
gsettings set org.gnome.desktop.privacy hide-identity true
gsettings set org.gnome.desktop.privacy old-files-age 0
gsettings set org.gnome.desktop.privacy privacy-screen false
gsettings set org.gnome.desktop.privacy recent-files-max-age -1
gsettings set org.gnome.desktop.privacy remember-app-usage false
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.desktop.privacy report-technical-problems false
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,close'
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.system.location enabled false
