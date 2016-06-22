/****************************/
/* Compressed UDP header 	*/
/* Compressed : 	61 bits	*/
/* Uncompressed :   96 bits	*/
/* Ratio :			63,54 % */
/****************************/ 

#ifndef COMP_HEADER_RTP_P4
#define COMP_HEADER_RTP_P4
header_type CompRTP_t {
	fields {		
		// Extension
		bit<1> ext;
		
		// Number ofg CSRC identifiers that follow the fixed header
		bit<4> nCRSC;
		
		// Marker, interpretation defined by a profile
		bit<1> marker;
		
		// Format of the RTP payload
		bit<7> payloadType;
		
		// Sequence Number
		bit<16> sequenceNumber;
		
		// Timestamp
		bit<32> timestamp;
		
		// List of contributing sources
		varbit<480> listCRSC;
    }
    length : nCRSC * 4 + 12;
}

header CompRTP_t comp_rtp;

#endif/*COMP_HEADER_RTP_P4*/