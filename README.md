<h1 align="center">Spearmint OS</h1>

<p align="center">Spearmint OS is a Linux Distribution based on Debian GNU/Linux that fits on a 700MB CD</p>

<p align="center"><img width=75% src=https://upload.wikimedia.org/wikipedia/commons/2/26/Spearmintos-1.png></p>

# Using
Spearmint OS can be used in three ways, in a virtual machine, on a USB flash drive, or on a CD. All of these require an ISO, and an ISO file can be built using your own computer, or downloaded from the <a href=https://github.com/DefunctLizard/spearmint-os/releases>releases page</a>.

## Burning to a CD
Burning the ISO file to a disk is very simple in all operating systems.

### Windows
Insert the CD disk into the computer, and then right click on the ISO file and select "Burn disc image". Then, in the popup window select the disk burner and click "Burn"

### MacOS
Insert the CD disk into the computer, and then click on the ISO file and select "File > Burn disc image". Then, in the popup window click "Burn"

### Linux
In Linux I recommend the software "Xfburn" for burning ISO files to disks. After installing the software, right click on the ISO file in the file manager, and then click "Open with XfBurn". Then, after selecting the burner and options, click burn.


## Burning to a USB Flash Drive
Burning to a USB flash drive is a bit different. Here I will use the Balena Etcher software because it is the most simple, cross platform option for beginners. To start, go to the <a href=https://etcher.io>Balena Etcher Website</a> and download the Etcher software for your platform. Then, after launching the program, select the ISO file to burn, and the drive to burn it to and click "burn". It should burn it to the disk and then verify after that.

# Building the ISO
Dependencies:
```
live-build live-config
```
Building is very simple, just do:
```
# lb config && lb build
```
It will then create an ISO that you can burn to a CD, DVD, flash drive, or run in a virtual machine.
