#!/bin/bash

mkdir -p /etc/satisfactory.d /opt/satisfactory

curl -o /etc/satisfactory.d/satisfactory  https://raw.githubusercontent.com/8bitsquid/satisfactory-server/linux-systemd-service/linux/etc/satisfactory.d/satisfactory
curl -o /etc/systemd/system/satisfactory.service https://raw.githubusercontent.com/8bitsquid/satisfactory-server/linux-systemd-service/linux/etc/systemd/system/satisfactory.service

systemctl daemon-reload
systemctl enable satisfactory.service