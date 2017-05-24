#!/bin/bash

ansible-playbook --private-key $1 -u ubuntu -i "$2," ansible/playbook.yml
