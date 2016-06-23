/* Compression header */

#ifndef HEADER_METADATA_P4
#define HEADER_METADATA_P4

header_type compression_metadata_t {
    fields {
        // ROHC Compression Profile
        bit<16> compressionProfile;

    	// Identifies the key of the flow
        bit<32> flowKey;
        
        // Set if flowKey as a match in the table
        bit<1> flowAccepted;

		// Set if flow entry must be added
		bit<1> addFlow;  
		
		// Set if packet is compressed
		bit<1> isCompressed;     
    }
}

metadata compression_metadata_t compression_metadata;

#endif/*HEADER_METADATA_P4*/