#!/bin/sh
KERNERL_VER=$(uname -r)

#/lib/modules/3.10.0-514.el7.x86_64/kernel/arch/x86/kvm/
echo "check kvm module\n"
ls -l /lib/modules/${KERNERL_VER}/kernel/arch/x86/kvm | grep kvm

# vmlinuz initramfs
echo "check /boot\n"
ls -l /boot | grep vmlinuz
ls -l /boot | grep initramfs

# check module kvm kvm_intel
echo "check kvm module"
lsmod | grep kvm

echo "check /dev/kvm "
ls -l /dev | grep kvm

echo "check qemu-kvm"
which qemu-img
which qemu-system-x86_64

echo "check qemu-kvm keymaps"
ls /usr/local/share/qemu/

ls /usr/local/share/qemu/keymaps
