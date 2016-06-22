/****************************/
/* Compressed IPv4 header 	*/
/* Compressed : 	65 bits	*/
/* Uncompressed :  160 bits	*/
/* Ratio :			40,62% 	*/
/****************************/ 

#ifndef COMP_HEADER_IPV4_P4
#define COMP_HEADER_IPV4_P4
header_type CompIPv4_t {
	fields {		
		// Bits 0-2 : precedence
		// Bits 3 	: delay (normal-0/low-1)
		// Bits 4	: throughput (normal-0/high-1)
		// Bits 6 	: relibility (normal-0/high-1)
		bit<8> typeOfService;
		
		// Total length of the datagram
		bit<16> totalLength;
		
		// Identifiyng value to help assemble the datagram's fragments together
		bit<16> id;
		
		// Flags : 	
		//			bit 1 -> May fragment (0) / Don't fragment (1)
		bit<1> mayFragment;
		
		// Time to live
		bit<8> ttl;
		
		// Header checksum 
		bit<16> headerChksum;
    }
}

header CompIPv4_t comp_ipv4;

#endif/*COMP_HEADER_IPV4_P4*/