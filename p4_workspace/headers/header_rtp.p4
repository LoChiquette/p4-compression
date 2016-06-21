/* RTP header */

#ifndef HEADER_RTP_P4
#define HEADER_RTP_P4

#define FIXED_LENGTH_RTP 2+1+1+4+1+7+16+32+32

header_type RTP_t {
	fields {
		// Version
		bit<2> version;
		
		// Padding
		bit<1> pad;
		
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
		
		// Synchronization source
		bit<32> SSRC;
		
		// List of contributing sources
		varbit<480> listCRSC;
    }
    length : nCRSC * 4 + 12;
}

header RTP_t rtp;

#endif/*HEADER_RTP_P4*/