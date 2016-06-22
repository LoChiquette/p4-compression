/****************************/
/* Compressed UDP header 	*/
/* Compressed : 	32 bits	*/
/* Uncompressed :   64 bits	*/
/* Ratio :			50 % 	*/
/****************************/ 

#ifndef COMP_HEADER_UDP_P4
#define COMP_HEADER_UDP_P4
header_type CompUDP_t {
	fields {		
		// Length of Header
		bit<16> hdrLength;
		
		// Checksum
		bit<16> chksum;
    }
}

header CompUDP_t comp_udp;

#endif/*COMP_HEADER_UDP_P4*/