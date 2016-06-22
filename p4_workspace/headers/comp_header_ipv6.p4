/****************************/
/* Compressed IPv6 header 	*/
/* Compressed : 	32 bits	*/
/* Uncompressed :  312 bits	*/
/* Ratio :			10,26%' 	*/
/****************************/ 

#ifndef COMP_HEADER_IPV6_P4
#define COMP_HEADER_IPV6_P4
header_type CompIPv6_t {
	fields {    	
    	// Traffic class
    	bit<8> trafficClass;
    	
    	// Payload length (length of the rest of packet following the header in octets)
    	bit<16> payloadLength;
     	
     	// Hop Limit (decremented by each node and hop limit -> discard)
     	bit<8> hopLimit;
    }
}

header CompIPv6_t comp_ipv6;

#endif/*COMP_HEADER_IPV6_P4*/