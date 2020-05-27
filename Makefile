# Makefile to create ISO images of Spearmint OS

download-iso:
	echo "Downloading Debian 10.4 ISO..."
	wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.4.0-amd64-xfce-CD-1.iso -q --show-progress
