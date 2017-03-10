#!/bin/sh
modprobe kvm
lsmod | grep kvm

modprobe kvm-intel
lsmod | grep kvm
