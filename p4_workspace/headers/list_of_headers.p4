#ifndef HEADERS_P4
#define HEADERS_P4

// Metadata
#include "header_metadata.p4"

// Uncompressed headers
#include "header_ethernet.p4"
#include "header_vlan.p4"
#include "header_ipv4.p4"
#include "header_ipv6.p4"
#include "header_tcp.p4"
#include "header_udp.p4"
#include "header_rtp.p4"
#include "header_arpv4.p4"
#include "header_icmpv4.p4"

// Compressed headers
#include "comp_header_ipv4.p4"
#include "comp_header_ipv6.p4"
#include "comp_header_tcp.p4"
#include "comp_header_udp.p4"
#include "comp_header_rtp.p4"

#endif /*HEADERS_P4*/