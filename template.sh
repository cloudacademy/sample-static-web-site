#!/bin/env bash

hostname=$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)
publicip=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
instanceid=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

sed -i "s/INSTANCE_ID/$instanceid/g" index.html
sed -i "s/INSTANCE_IP/$publicip/g" index.html
sed -i "s/INSTANCE_HOSTNAME/$hostname/g" index.html
