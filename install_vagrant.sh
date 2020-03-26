#!/bin/bash -xe
#install vagrant and initialize ubuntu with vagrant and virtualbox

DIRECTORY=./vagrant/ubuntu
if [ -d "$DIRECTORY" ]; then
	mkdir -p vagrant/ubuntu
fi

cd vagrant/ubuntu

sudo dnf install vagrant 

vagrant init ubuntu/trusty64

vagrant up --provider virtualbox
