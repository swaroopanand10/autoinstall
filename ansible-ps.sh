#!/bin/bash

read -sp "enter vault: " vault

echo "$vault" > ~/.vault-key
mkdir -p ~/.ssh/
ansible-vault view --vault-password-file ~/.vault-key ./ans/ansibler.txt > ~/.ssh/id_ed25519
ansible-vault view --vault-password-file ~/.vault-key ./ans/ansibleu.txt > ~/.ssh/id_ed25519.pub

#just for testing
# ansible-vault view --vault-password-file ~/.vault-key ./ans/ansibler.txt > ~/ssh/id_ed25519
# ansible-vault view --vault-password-file ~/.vault-key ./ans/ansibleu.txt > ~/ssh/id_ed25519.pub
