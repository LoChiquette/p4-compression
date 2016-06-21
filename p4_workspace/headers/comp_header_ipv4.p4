/* Compressed IPv4 header */

#ifndef COMP_HEADER_IPV4_P4
#define COMP_HEADER_IPV4_P4
header_type CompIPv4_t {
	fields {
		// Version of protocol IP (here 4)
    	bit<4> version;
    	
    	// Length of the internet header in 32-bit words (minimum 5) 
		bit<4> ihl;
		
		// Bits 0-2 : precedence
		// Bits 3 	: delay (normal-0/low-1)
		// Bits 4	: throughput (normal-0/high-1)
		// Bits 6 	: relibility (normal-0/high-1)
		bit<8> typeOfService;
		
		// Total length of the datagram
		bit<16> totalLength;
		
		// Identifiyng value to help assemble the datagram's fragments together
		bit<16> id;
		
		// Flags : 	bit 0 -> must be zero
		//			bit 1 -> May fragment (0) / Don't fragment (1)
		//			bit 2 -> Last fragment(0) / More fragments (1)
		bit<1> zero;
		bit<1> mayFragment;
		bit<1> lastFragment;
		
		// Fragment offset
		bit<13> offset;
		
		// Time to live
		bit<8> ttl;
		
		// Protocol used in the internet datagram 
		bit<8> protocol;
		
		// Header checksum 
		bit<16> headerChksum;
		
		// Source Address
		bit<32> srcAddr;
		
		// Destination Address
		bit<32> dstAddr;
		
		// Options + padding
		varbit<320> options;
    }
    length : ihl * 4;
}

header IPv4_t ipv4;

#endif/*HEADER_IPV4_P4*/