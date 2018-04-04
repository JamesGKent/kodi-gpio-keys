# GPIO Keys

This is a modification of the linux gpio-keys driver to declare more keys (even if only using 1) so that kodi sees more than 20 and actually listens to this device.

## Prerequisites
 - kernel headers for the version of kernel you are running (commands for install on raspbian and OSMC will follow)
 - make (either installed directly or as part of pkg-tools)
 
## Common instructions
either:  
a. clone this repo  
b. copy the source and makefile from the `module` subfolder  
Then open terminal in the folder containing the source and makefile

## Raspbian
1. sudo apt-get install raspberypi-kernel-headers
2. sudo ln -s /usr/src/linux-headers-$(uname -r) /lib/modules/$(uname -r/build
3. make
4. sudo make install

## OSMC
1. sudo apt-get install rbp2-headers-$(uname -r)
2. sudo ln -s /usr/src/rbp2-headers-$(uname -r) /lib/modules/$(uname -r/build
3. make
4. sudo make install
