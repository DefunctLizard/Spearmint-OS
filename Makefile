# Makefile to create ISO images of Spearmint OS

all:
	make download-iso
	make mount-iso
	make unpack-filesystem
	make pack-filesystem
	make pack-iso

download-iso:
	echo "Downloading Debian 10.4 ISO..."
	wget https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-10.4.0-amd64-xfce.iso -q --show-progress

mount-iso:
	mkdir /tmp/debian-cd-readonly
	mount -t iso9660 -o loop debian-live-10.4.0-amd64-xfce.iso /tmp/debian-cd-readonly
	mkdir ./debian-cd
	cp -rv /tmp/debian-cd-readonly/* ./debian-cd

unpack-filesystem:
	mkdir ./squashfs
	mv ./debian-cd/live/filesystem.squashfs .
	unsquashfs -f -d ./squashfs ./debian-cd/live/filesystem.squashfs

pack-filesystem:
	mksquashfs ./squashfs ./debian-cd/live/filesystem.squashfs

pack-iso:
	cd debian-cd
	mkisofs -o Spearmint-OS-0.1-x86_64.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -J -R -V "Spearmint OS 0.1 ISO" .
