#!/bin/bash -x
#install vagrant and initialize ubuntu with vagrant and virtualbox

DIRECTORY=./vagrant/centos/
if [ ! -d "$DIRECTORY" ]; then
	mkdir -p $DIRECTORY
fi

cp Vagrantfile $DIRECTORY

# copy playbook for ansible (used as a provider)
cp playbook.yml $DIRECTORY
cd $DIRECTORY


sudo dnf install vagrant 


vagrant up --provider virtualbox
