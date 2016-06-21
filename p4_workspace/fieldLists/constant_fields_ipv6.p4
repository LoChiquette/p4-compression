/* List of fields constant for IPv6 headers */

#ifndef CONSTANT_FIELDS_IPV6_P4
#define CONSTANT_FIELDS_IPV6_P4

#include "../headers/header_ipv6.p4"

field_list static_fields_IPv6 {
	ipv6.version;
	ipv6.flowLabel;
	ipv6.nextHeader;
	ipv6.srcAddr;
	ipv6.dstAddr;
}

#endif/*CONSTANT_FIELDS_IPV6_P4*/