/* ARP for IPv4 header */

#ifndef HEADER_ARPV4_P4
#define HEADER_ARPV4_P4

header_type ARPv4_t {
	fields {
		// Fields with '*' should be the same as IPv4
		
		// Hardware Type (*)
		bit<16> hardware;
		
		// Protocol type (*)
		bit<16> protocol;
		
		// Hardware Address Length (*)
		bit<8> hardwareAddrLength;
		
		// Protocol Address Length (Uses new value 12)
		bit<8> protocolAddrLength;
		
		// Operation Code (uses experimental value OP_EXP1=24)
		bit<16> op;
		
		// Sender Hardware Address (*)
		bit<48> sndrHardwareAddrs;
		
		// Sender IPv4 Address (*)
		bit<32> sndrIPv4Addr;
		
		// Sender Node Identifier 
		bit<64> sndrNodeId;
		
		// Target Hardware Address (*)
		bit<48> trgHardwareAddr;
		
		// Target IPv4 Address (*)
		bit<32> trgIPv4Addr;
		
		// Target Node Identifier
		bit<64> trgNodeId;
	}
}

header ARPv4_t arpv4;

#endif/*HEADER_ARPV4_P4*/
