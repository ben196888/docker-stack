#!/bin/sh 

if [ -s "Dockerfile" ]
then
  echo 'Dockerfile found, start building'
  docker build -t openstack:${PWD##*/} .
else
  echo 'No Dockerfile found, do nothing'
fi
