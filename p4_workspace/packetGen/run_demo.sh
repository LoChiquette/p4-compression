#!/bin/bash

THIS_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $THIS_DIR/env.sh

P4C_BM_SCRIPT=$P4C_BM_PATH/p4c_bm/__main__.py

SWITCH_PATH=$BMV2_PATH/targets/simple_switch/simple_switch

CLI_PATH=$BMV2_PATH/tools/runtime_CLI.py

# Probably not very elegant but it works nice here: we enable interactive mode
# to be able to use fg. We start the switch in the background, sleep for 2
# minutes to give it time to start, then add the entries and put the switch
# process back in the foreground
set -m
$P4C_BM_SCRIPT ../parser/parser.p4 --json parser.json --p4-v1.1
# This gets root permissions, and gives libtool the opportunity to "warm-up"

sudo $SWITCH_PATH ../parser/parser.json \
    -i 0@veth0 -i 1@veth2 -i 2@veth4 -i 3@veth6 -i 4@veth8 \
    --nanolog ipc:///tmp/bm-0-log.ipc \
    --pcap &
sleep 2
$CLI_PATH --json ../parser/parser.json 
echo "READY!!!"
fg
