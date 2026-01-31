#!/bin/bash -x

virsh list --name | xargs -r -n 1 virsh destroy
virsh list --name --all | xargs -r -n 1 virsh undefine
rm /var/lib/libvirt/images/*
echo > /root/.ssh/known_hosts