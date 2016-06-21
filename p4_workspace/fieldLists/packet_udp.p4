/* List of all fields of a UDP Packet */

#ifndef PACKET_UDP_P4
#define PACKET_UDP_P4

#include "../headers/header_udp.p4"
#include "packet_ipv4.p4"
#include "packet_ipv6.p4"

field_list fields_UDPv4 {
	fields_IPv4;
	udp.srcPort;
	udp.dstPort;
	udp.hdrLength;
	udp.chksum;
}

field_list fields_UDPv6 {
	fields_IPv6;
	udp.srcPort;
	udp.dstPort;
	udp.hdrLength;
	udp.chksum;
}

#endif/*PACKET_UDP_P4*/