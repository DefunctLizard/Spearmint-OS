# spearmint-os
Spearmint OS is a Linux Distribution based on Debian GNU/Linux

## Build
First, install the dependencies:
```
sudo apt install genisoimage automake wget squashfs-tools
```
Next, you need to download the original Debian ISO, this can be done either with the makefile by doing "`make download-iso`", or by downloading "debian-10.4.0-amd64-netinst.iso" from your nearest mirror.
