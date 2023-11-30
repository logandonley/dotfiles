#!/bin/bash


if ! command -v ansible-playbook &> /dev/null; then
    ./run_once_install_ansible.sh
fi

ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass

