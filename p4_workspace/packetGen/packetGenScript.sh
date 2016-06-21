#!/bin/bash

noOfVeths=18
if [ $# -eq 1 ]; then 
    noOfVeths=$1
fi

echo "No of Veths is $noOfVeths"
idx=0
let "vethpairs=$noOfVeths/2"
while [ $idx -lt $vethpairs ]
do 
    intf0="veth$(($idx*2))"
    intf1="veth$(($idx*2+1))"
    idx=$((idx + 1))
    if ! ip link show $intf0 &> /dev/null; then
        ip link add name $intf0 type veth peer name $intf1
        ip link set dev $intf0 up
        ip link set dev $intf1 up
        TOE_OPTIONS="rx tx sg tso ufo gso gro lro rxvlan txvlan rxhash"
        for TOE_OPTION in $TOE_OPTIONS; do
           /sbin/ethtool --offload $intf0 "$TOE_OPTION" off
           /sbin/ethtool --offload $intf1 "$TOE_OPTION" off
        done
    fi
    sysctl net.ipv6.conf.$intf0.disable_ipv6=1
    sysctl net.ipv6.conf.$intf1.disable_ipv6=1
done

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
$P4C_BM_SCRIPT ../parser/parser.p4 --json ../parser/parser.json --p4-v1.1
# This gets root permissions, and gives libtool the opportunity to "warm-up"
sudo $SWITCH_PATH >/dev/null 2>&1
sudo $SWITCH_PATH ../parser/parser.json \
    -i 0@veth0 -i 1@veth2 -i 2@veth4 -i 3@veth6 -i 4@veth8 \
    --nanolog ipc:///tmp/bm-0-log.ipc \
    --pcap &
sleep 2
sudo $CLI_PATH --json ../parser/parser.json < commands.txt
echo "READY!!!"
fg