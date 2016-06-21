/* List of all fields of a Ethernet Packet */

#ifndef PACKET_ETH_P4
#define PACKET_ETH_P4

#include "../headers/header_ethernet.p4"

field_list fields_eth {
	ethernet.dstAddr;
	ethernet.srcAddr;
	ethernet.etherType;
}

#endif/*PACKET_ETH_P4*/