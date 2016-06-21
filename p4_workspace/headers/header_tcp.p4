/* TCP header */

#ifndef HEADER_TCP_P4
#define HEADER_TCP_P4

header_type TCP_t {
	fields {
		// Source Port
		bit<16> srcPort;
		
		// Destination Port;
		bit<16> dstPort;
		
		// Sequence Number
		bit<32> sequenceNum;
		
		// Acknowledgment Number
		bit<32> ackNum;
		
		// Data Offset (specifies the size of TCP header in 32-bit words; minimum 5 words and maximum 15 words)
		bit<4> 	dataOffset;
		
		// Reserved (all 0; for future use)
		bit<3> 	reserved;
		
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
		
		// Options (first octet : kind (0 = end of option list; 1 = no-op; 2 = Maximum Segment Size) + Padding
		varbit<320> options;		
    }
    length : dataOffset * 4;
}

header TCP_t tcp;

#endif/*HEADER_TCP_P4*/