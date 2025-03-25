#!/bin/sh

DEVICE="/dev/nvme0n1"
LUKS_CONTAINER_NAME="luks"
CONTAINER_NAME="crypt"

LUKS_LABEL="LUKS"
BOOT_LABEL="BOOT"
ROOT_LABEL="ROOT"
SWAP_LABEL="SWAP"
HOME_LABEL="HOME"

#BAD CODE
#if ! ls /dev | grep -q "$DEVICE"; then
#  echo "Device ${DEVICE} wasn't found."
#  exit
#fi

echo "g
n
1

+1G
t
1
n
2


w
" | fdisk $DEVICE

echo "123" | cryptsetup luksFormat --label "$LUKS_LABEL" "${DEVICE}2"

mkfs.fat -F 32 -n "$BOOT_LABEL" "${DEVICE}1"
while ! ls /dev/disk/by-label | grep -q "$LUKS_LABEL"; do
  echo "Waiting for label to appear"
done

echo "123" | cryptsetup luksOpen "/dev/disk/by-label/${LUKS_LABEL}" "${LUKS_CONTAINER_NAME}"

pvcreate "/dev/mapper/${LUKS_CONTAINER_NAME}"
vgcreate $CONTAINER_NAME "/dev/mapper/${LUKS_CONTAINER_NAME}"
lvcreate -L 32799182848B $CONTAINER_NAME -n swap
lvcreate -L 200G $CONTAINER_NAME -n root
lvcreate -L 200G $CONTAINER_NAME -n home


mkfs -t ext4 -L "$ROOT_LABEL" "/dev/mapper/${CONTAINER_NAME}-root"
mkfs -t btrfs -L "$HOME_LABEL" "/dev/mapper/${CONTAINER_NAME}-home"
mkswap -L "$SWAP_LABEL" "/dev/mapper/${CONTAINER_NAME}-swap"


