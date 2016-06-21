/* UDP header */

#ifndef HEADER_UDP_P4
#define HEADER_UDP_P4

header_type UDP_t {
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

header UDP_t udp;

#endif/*HEADER_UDP_P4*/