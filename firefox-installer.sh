#!/bin/bash
# =====================================
# ==== Firefox Installer for Linux ====
# =====================================
# Version : 1.0
# Author : GNU/Alex
# Description : Script for installing 
# Firefox on Ubuntu without using Snap 
# or Flatpak or additional repos.
# =====================================


TempFolder="/tmp/"
Url="https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
InstallPath="/opt/"
Path="$InstallPath/firefox/firefox"
filename="firefox.tar.xz"
DesktopFileUrl="https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop"
DesktopFilePath="/usr/local/share/applications/"


# Check if script is executed with sudo 
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo."
  exit 1
fi

# moving in /tmp/ folder
cd $TempFolder

# Creating /opt/ folder if don't exist :
mkdir -p $InstallPath

# Getting archive on Mozilla's website.
echo "Downloading Firefox..."
wget -q --show-progress -O $filename $Url
echo "Download complete."

# Decompressing archive.
tar -xjf $filename
rm $filename

# Move the uncompressed Firefox folder to /opt: 
mv firefox $InstallPath
# Create a symlink to the Firefox executable: 
ln -s $Path /usr/local/bin/firefox
# Downloading a copy of the .desktop file from Mozilla :
wget $DesktopFileUrl -P $DesktopFilePath

