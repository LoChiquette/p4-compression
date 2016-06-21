/* List of fields constant for TCP headers */

#ifndef CONSTANT_FIELDS_TCP_P4
#define CONSTANT_FIELDS_TCP_P4

#include "../headers/header_tcp.p4"
#include "constant_fields_ipv4.p4"
#include "constant_fields_ipv6.p4"

field_list static_fields_TCPv4 {
	static_fields_IPv4;
	tcp.srcPort;
	tcp.dstPort;
	tcp.reserved;
}

field_list static_fields_TCPv6 {
	static_fields_IPv6;
	tcp.srcPort;
	tcp.dstPort;
	tcp.reserved;
}

#endif/*CONSTANT_FIELDS_TCP_P4*/