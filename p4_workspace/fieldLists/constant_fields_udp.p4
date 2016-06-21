/* List of fields constant for UDP headers */

#ifndef CONSTANT_FIELDS_UDP_P4
#define CONSTANT_FIELDS_UDP_P4

#include "../headers/header_udp.p4"
#include "constant_fields_ipv4.p4"
#include "constant_fields_ipv6.p4"

field_list static_fields_UDPv4 {
	static_fields_IPv4;
	udp.srcPort;
	udp.dstPort;
}

field_list static_fields_UDPv6 {
	static_fields_IPv6;
	udp.srcPort;
	udp.dstPort;
}

#endif/*CONSTANT_FIELDS_UDP_P4*/