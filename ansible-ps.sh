#!/bin/bash

read -sp "enter vault: " vault

mkdir -p ~/.ssh/
echo "$vault" | ansible-vault decrypt ./ans/ansibler.txt --vault-password-file='/bin/cat' --output='~/.ssh/id_ed25519'
echo "$vault" | ansible-vault decrypt ./ans/ansibleu.txt --vault-password-file='/bin/cat' --output='~/.ssh/id_ed25519.pub'

chmod 600 $HOME/.ssh/*
history -c
