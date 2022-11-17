#!/bin/bash
sudo su -
apt update
apt install -y openjdk-11-jre-headless
curl -L https://packages.rundeck.com/pagerduty/rundeck/gpgkey | sudo apt-key add -
cat >'/etc/apt/sources.list.d/rundeck.list' <<EOT
deb https://packages.rundeck.com/pagerduty/rundeck/any/ any main
deb-src https://packages.rundeck.com/pagerduty/rundeck/any/ any main
EOT
apt update
apt install -y rundeck
systemctl enable rundeckd.service 
systemctl start rundeckd.service 
#systemctl status rundeckd.service 