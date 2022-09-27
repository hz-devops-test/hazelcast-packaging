#!/bin/bash

# note: fedora has no wget by default (strange, yeah), so it's additional query beside those mentioned in repo
sudo yum -y install wget

local packageVersion='stable'
if [ "$1" ]; then
  packageVersion="$1"
fi
wget https://repository.hazelcast.com/rpm/${packageVersion}/hazelcast-rpm-${packageVersion}.repo -O hazelcast-rpm-${packageVersion}.repo
sudo mv hazelcast-rpm-${packageVersion}.repo /etc/yum.repos.d/