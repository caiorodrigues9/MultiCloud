#!/bin/bash
sudo su -
apt update
apt install -y openjdk-11-jre-headless
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
cat >'/etc/apt/sources.list.d/jenkins.list' <<EOT
deb http://pkg.jenkins.io/debian-stable binary/
EOT
apt update
apt install -y jenkins 
systemctl enable jenkins
systemctl start jenkins
#systemctl status jenkins