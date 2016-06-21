/* Ethernet header */

#ifndef HEADER_ETH_P4
#define HEADER_ETH_P4

header_type ETHERNET_t {
	fields {
		// Destination MAC Address
    	bit<48> dstAddr;
    	
    	// Source MAC Address 
		bit<48> srcAddr;
		
		// Type of protocol or length of the user data
		bit<16> etherType;
    }
}

header ETHERNET_t ethernet;

#endif/*HEADER_ETH_P4*/