#!/bin/bash

ansible-playbook --private-key ~/.ssh/svo.pem -u ubuntu -i "$1," ansible/playbook.yml
