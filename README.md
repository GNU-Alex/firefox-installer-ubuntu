# Firefox Installer for Linux

## Description

This script allows you to install Firefox on a Linux (Ubuntu) system without using Snap, Flatpak, or additional repositories. It downloads the latest version of Firefox directly from the Mozilla website and installs it in the `/opt/` directory.

## Prerequisites

Before running this script, make sure to:

1. **Remove Snap**: If you have already installed Firefox via Snap, you need to uninstall it before using this script. Run the following command in the terminal:
   ```bash
   sudo snap remove firefox
   ```
   
3. **Have wget and tar installed:**
  These tools are necessary to download and extract the Firefox archive. You can install them with the following command:
```bash
sudo apt install wget tar
```
3. **Have sudo privileges**:
   You need to have the ability to run commands with `sudo`. This is necessary for installing software and making changes to system directories.


## Installation

  1. **Download the script:**
     Download the script file firefox_installer.sh from the repository.

  2. **Make the script executable:**
     Before running the script, you need to make it executable. Use the following command:
     ```bash
     chmod +x firefox-installer.sh
     ```

  4. **Run the script:**
    Launch the script with administrative privileges:
     ```bash
     sudo ./firefox_installer.sh
     ```

## Usage

After running the script, Firefox will be installed in the `/opt/firefox/` directory. A symbolic link to the Firefox executable will also be created in `/usr/local/bin/`, allowing you to launch Firefox by typing `firefox` in the terminal or by searching for it in the applications menu.

## Notes

- This script is designed to be used on Ubuntu-based systems. Other distributions may require adjustments.
- Ensure you have an active Internet connection while running the script, as it will download Firefox from the Mozilla website.

