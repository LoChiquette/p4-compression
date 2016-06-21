/* List of all fields of a IPv4 Packet */

#ifndef PACKET_IPV4_P4
#define PACKET_IPV4_P4

#include "../headers/header_ipv4.p4"
#include "packet_eth.p4"

field_list fields_IPv4 {
	fields_eth;
	ipv4.version;
	ipv4.ihl;
	ipv4.typeOfService;
	ipv4.totalLength;
	ipv4.id;
	ipv4.zero;
	ipv4.mayFragment;
	ipv4.lastFragment;
	ipv4.offset;
	ipv4.ttl;
	ipv4.protocol;
	ipv4.headerChksum;
	ipv4.srcAddr;
	ipv4.dstAddr;
	ipv4.options;
}

#endif/*PACKET_IPV4_P4*/