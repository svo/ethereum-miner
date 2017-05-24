#!/bin/bash

source common.sh

docker ps -a | awk '{print $1}' | xargs docker stop
docker ps -a | awk '{print $1}' | xargs docker rm

vagrant up test --provider=docker
provisioning_test=$?
echo_result "Environment Provisioning" $provisioning_test

vagrant halt

exit $provisioning_test
