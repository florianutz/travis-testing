#!/bin/bash
ps auxwww
apt update
apt install chrony -y
systemctl status chrony
systemctl start chrony
systemctl status chrony
