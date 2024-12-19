#!/bin/sh
mkdir -p /opt/wg-healthcheck
cp wg-healthcheck.sh /opt/wg-healthcheck/wg-healthcheck.sh
chmod a+x /opt/wg-healthcheck/wg-healthcheck.sh

cp wg-healthcheck.service /etc/systemd/system/wg-healthcheck.service
cp wg-healthcheck.timer /etc/systemd/system/wg-healthcheck.timer

systemctl daemon-reload
systemctl enable --now wg-healthcheck.timer

