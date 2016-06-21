/* List of all fields of a IPv6 Packet */

#ifndef PACKET_IPV6_P4
#define PACKET_IPV6_P4

#include "../headers/header_ipv6.p4"
#include "packet_eth.p4"

field_list fields_IPv6 {
	fields_eth;
	ipv6.version;
	ipv6.trafficClass;
	ipv6.flowLabel;
	ipv6.payloadLength;
	ipv6.nextHeader;
	ipv6.hopLimit;
	ipv6.srcAddr;
	ipv6.dstAddr;
}

#endif/*PACKET_IPV4_P6*/