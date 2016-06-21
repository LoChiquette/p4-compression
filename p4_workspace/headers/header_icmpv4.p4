/* ICMP for IPv4 header */

#ifndef HEADER_ICMPV4_P4
#define HEADER_ICMPV4_P4

header_type ICMPv4_t {
	fields {
		// Source Port
		bit<16> srcPort;
		
		// Destination Port;
		bit<16> dstPort;
		
		// Length of Header
		bit<16> hdrLength;
		
		// Checksum
		bit<16> chksum;
    }
}

header ICMPv4_t icmpv4;

#endif/*HEADER_ICMPV4_P4*/