#!/bin/bash

if [[ "$1" == "stack" && "$2" == "install" ]]; then
    cd /home/ubuntu
    rm -rf cinder
    git clone https://github.com/Nexenta/cinder.git
    cp -r cinder/cinder/volume/drivers/nexenta/ns5/nfs.py /opt/stack/cinder/cinder/volume/drivers/nexenta/ns5
fi
