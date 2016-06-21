/* List of fields constant for IPv4 headers */

#ifndef CONSTANT_FIELDS_IPV4_P4
#define CONSTANT_FIELDS_IPV4_P4

#include "../headers/header_ipv4.p4"

field_list static_fields_IPv4 {
	ipv4.version;
	ipv4.ihl;
	ipv4.zero;
	ipv4.lastFragment;
	ipv4.offset;
	ipv4.protocol;
	ipv4.srcAddr;
	ipv4.dstAddr;
}

#endif/*CONSTANT_FIELDS_IPV4_P4*/