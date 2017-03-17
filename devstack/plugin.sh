#!/bin/bash

if [[ "$1" == "stack" && "$2" == "install" ]]; then
    cd
    rm -rf cinder
    git clone -b $NS_CINDER_BRANCH https://github.com/Nexenta/cinder.git
    cp -rf cinder/cinder/volume/drivers/nexenta/ /opt/stack/cinder/cinder/volume/drivers/
fi
