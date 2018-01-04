#!/bin/bash
ps auxwww
mount
find /etc/systemd/system \
         /lib/systemd/system \
         -path '*.wants/*' \
         -not -name '*journald*' \
         -not -name '*systemd-tmpfiles*' \
         -not -name '*systemd-user-sessions*' \
         -exec rm \{} \;
systemctl set-default multi-user.target

apt update
apt install chrony -y
systemctl status chrony
systemctl start chrony
systemctl status chrony
