#!/bin/bash

sleep 30
sudo apt-get install -y git
sleep 30
git clone -b monolith https://github.com/express42/reddit.git /home/ubuntu/reddit
cd /home/ubuntu/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
