xi libvirt virt-manager virt-manager-tools qemu

sleep 3
# Enable libvirtd
sudo ln -s /etc/sv/libvirtd /var/service
sudo sv up libvirtd

# Enable virtlockd
sudo ln -s /etc/sv/virtlockd /var/service
sudo sv up virtlockd

# Enable virtlogd
sudo ln -s /etc/sv/virtlogd /var/service
sudo sv up virtlogd
