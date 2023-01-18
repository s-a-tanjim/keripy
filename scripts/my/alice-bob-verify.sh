#!/bin/bash

# Environment Variables
export KERI_SCRIPT_DIR="$(pwd)/scripts/"
export KERI_DEMO_SCRIPT_DIR="$(pwd)/scripts/demo"
export KERI_MY_SCRIPT_DIR="$(pwd)/scripts/my"

# Clear DB
rm -rf /usr/local/var/keri/*

# Create Alice
kli init --name alice --nopasscode --salt 0ADQgshGQWlfM-JpMuMa3jpF

# Create Bob
kli init --name bob --nopasscode --salt 0AA3bLIpGOX9Iu8NtzjzwrTr