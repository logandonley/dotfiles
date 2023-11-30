#!/bin/bash


if command -v ansible-playbook &> /dev/null; then
    ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass
fi


