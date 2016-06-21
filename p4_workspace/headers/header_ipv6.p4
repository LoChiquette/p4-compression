/* IPv6 header */

#ifndef HEADER_IPV6_P4
#define HEADER_IPV6_P4

header_type IPv6_t {
	fields {
		// Version of protocol IP (here 6)
    	bit<4> version;
    	
    	// Traffic class
    	bit<8> trafficClass;
    	
    	// Flow Label
    	bit<20> flowLabel;
    	
    	// Payload length (length of the rest of packet following the header in octets)
    	bit<16> payloadLength;
    	
    	// Next Header 
     	bit<8> nextHeader;
     	
     	// Hop Limit (decremented by each node and hop limit -> discard)
     	bit<8> hopLimit;
     	
     	// Source Address
     	bit<128> srcAddr;
     	
     	// Destination Address
     	bit<128> dstAddr;
    }
}

header IPv6_t ipv6;

#endif/*HEADER_IPV6_P4*/