/****************************/
/* Compressed TCP header 	*/
/* Compressed :    125 bits	*/
/* Uncompressed :  160 bits	*/
/* Ratio :			78,12% 	*/
/****************************/ 

#ifndef COMP_HEADER_TCP_P4
#define COMP_HEADER_TCP_P4
header_type CompTCP_t {
	fields {		
		// Sequence Number
		bit<32> sequenceNum;
		
		// Acknowledgment Number
		bit<32> ackNum;
		
		// Data Offset (specifies the size of TCP header in 32-bit words; minimum 5 words and maximum 15 words)
		bit<4> 	dataOffset;
		
		// ECN-nonce concealment protection (congestion avoidment)
		bit<1> 	ns;
		
		// Congestion Window Reduced flag set by the sending host who received an ECE flag 
		bit<1> 	cwr;
		
		// ECN-Echo (SYN = 1, TCP peer is ECN capable; SYN = 0, ECN = 11, indication of network congestion)
		bit<1> 	ece;
		
		// Urgent Pointer field significant
		bit<1> 	urg;
		
		//Acknowledgment field significant
		bit<1> 	ack;
		
		// Push function
		bit<1> 	psh;
		
		// Reset the connection
		bit<1> 	rst;
		
		// Synchronize sequence numbers
		bit<1> 	syn;
		
		// No more data from sender
		bit<1> 	fin;
		
		// Window
		bit<16> window;
		
		// Checksum
		bit<16> chksum;
		
		// Urgent Pointer (used when Urgent Pointer bit is set to 1 (urg)
		bit<16> urgPtr;		
    }
}

header CompTCP_t comp_tcp;

#endif/*COMP_HEADER_TCP_P4*/