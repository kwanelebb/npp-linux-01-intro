#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh

# Create a bridge
ip link add name br0 type bridge

# Bring the bridge up
ip link set br0 up

# Add all interfaces connecting to the hosts to the bridge
# These are the interfaces on the bridge/router node that connect to each host
ip link set eth1 master br0
ip link set eth2 master br0
ip link set eth3 master br0
ip link set eth4 master br0

# Bring all interfaces up
ip link set eth1 up
ip link set eth2 up
ip link set eth3 up
ip link set eth4 up
