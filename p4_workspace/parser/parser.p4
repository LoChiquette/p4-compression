/*
 * Included after in this file
 * #include eth_type.p4 	
 * #include ip_protocols.p4
 */
#include "../headers/list_of_headers.p4"

//////////////////////////////////////////
//										//
//	Parser State Machine Description	//
//										//
//////////////////////////////////////////

// Always start with Ethernet

parser start {
	return parse_ethernet;
}	
//////////////////////////////////////////
//		  Ethernet Parser State 		//
//////////////////////////////////////////
// File of definition of the Ethernet type field meaning
#include "protocols_eth.p4"

parser parse_ethernet {
	extract(ethernet);
	return select(latest.etherType) {
		PROTOCOL_ETH_IPv4:	parse_ipv4;		// 0x0800
		PROTOCOL_ETH_ARP:	parse_arpv4;	// 0x0806
		PROTOCOL_ETH_VLAN:	parse_vlan;		// 0x8100
		PROTOCOL_ETH_IPv6:	parse_ipv6;		// 0x86DD
		
		PROTOCOL_ETH_UNCOMPRESSED_IPv4: parse_ipv4;		// 0x9001
		PROTOCOL_ETH_UNCOMPRESSED_IPv6: parse_ipv6;		// 0x9002
		PROTOCOL_ETH_COMPRESSED_IPv4:	parse_comp_ipv4;	// 0x9003
		PROTOCOL_ETH_COMPRESSED_IPv6:	parse_comp_ipv6;	// 0x9004
		PROTOCOL_ETH_COMPRESSED_TCPv4: 	parse_comp_tcpv4;	// 0x9005
		PROTOCOL_ETH_COMPRESSED_TCPv6:	parse_comp_tcpv6;	// 0x9006
		PROTOCOL_ETH_COMPRESSED_UDPv4:	parse_comp_udpv4;	// 0x9007
		PROTOCOL_ETH_COMPRESSED_UDPv6:	parse_comp_udpv6;	// 0x9008
		PROTOCOL_ETH_COMPRESSED_RTPv4:	parse_comp_rtpv4;	// 0x9009
		PROTOCOL_ETH_COMPRESSED_RTPv6: 	parse_comp_rtpv6;	// 0x900A
		default:		ingress;
	}
}

//////////////////////////////////////////
//		  	VLAN Parser State	 		//
//////////////////////////////////////////

parser parse_vlan {
	extract(vlan);
	return select(latest.ethertype) {
		PROTOCOL_ETH_IPv4:	parse_ipv4;		// 0x0800
		PROTOCOL_ETH_ARP:	parse_arpv4;	// 0x0806
		PROTOCOL_ETH_IPv6:	parse_ipv6;		// 0x86DD
		default:		ingress;
	}
}

//////////////////////////////////////////
//		  	IPv4 Parser State	 		//
//////////////////////////////////////////
// File of definition of the protocol field meaning
#include "protocols_ip.p4" 

parser parse_ipv4 {
	extract(ipv4);
	return select(latest.protocol) {
		PROTOCOL_IP_ICMP:	parse_icmpv4;	// 0x01
		PROTOCOL_IP_TCP:	parse_tcp;		// 0x06
		PROTOCOL_IP_UDP: 	parse_udp;		// 0x11
		//PROTOCOL_IP_ICMPv6: parse_icmpv6;	// 0x3A
		default: 		ingress;
	}
}

parser parse_comp_ipv4 {
	extract(comp_ipv4);
	return ingress;
}

//////////////////////////////////////////
//		  	ARPv4 Parser State	 		//
//////////////////////////////////////////

parser parse_arpv4 {
	extract(arpv4);
	return ingress;
}

//////////////////////////////////////////
//		  	IPv6 Parser State	 		//
//////////////////////////////////////////

parser parse_ipv6 {
	extract(ipv6);
	return select(latest.nextHeader) {
		PROTOCOL_IP_ICMP:	parse_icmpv4;	// 0x01
		PROTOCOL_IP_TCP:	parse_tcp;		// 0x06
		PROTOCOL_IP_UDP: 	parse_udp;		// 0x11
		//PROTOCOL_IP_ICMPv6: parse_icmpv6;	// 0x3A
		default:		ingress;
	}
}
	
parser parse_comp_ipv6 {
	extract(comp_ipv6);
	return ingress;
}
	
//////////////////////////////////////////
//		  	TCP Parser State	 		//
//////////////////////////////////////////

parser parse_tcp {
	extract(tcp);
	return ingress;
}	

parser parse_comp_tcpv4 {
	extract(comp_ipv4);
	extract(comp_tcp);
	return ingress;
}

parser parse_comp_tcpv6 {
	extract(comp_ipv6);
	extract(comp_tcp);
	return ingress;
}
	
//////////////////////////////////////////
//		  	UDP Parser State	 		//
//////////////////////////////////////////
// File of definition of the protocol field meaning
#include "protocols_udp.p4"

parser parse_udp {
	extract(udp);
	return select(latest.dstPort) {
		PROTOCOL_UDP_RTP_MEDIA: parse_rtp; 	// 5004
		PROTOCOL_UDP_RTP_CTRL:	parse_rtp;	// 5005
		default: 		ingress;
	}
}	

parser parse_comp_udpv4 {
	extract(comp_ipv4);
	extract(comp_udp);
	return ingress;
}

parser parse_comp_udpv6 {
	extract(comp_ipv6);
	extract(comp_udp);
	return ingress;
}

//////////////////////////////////////////
//		  	ICMPv4 Parser State	 		//
//////////////////////////////////////////

parser parse_icmpv4 {
	extract(icmpv4);
	return ingress;
}

//////////////////////////////////////////
//		  	RTP Parser State	 		//
//////////////////////////////////////////

parser parse_rtp {
	extract(rtp);
	return ingress;
}	


parser parse_comp_rtpv4 {
	extract(comp_ipv4);
	extract(comp_udp);
	extract(comp_rtp);
	return ingress;
}

parser parse_comp_rtpv6 {
	extract(comp_ipv6);
	extract(comp_udp);
	extract(comp_rtp);
	return ingress;
}

control ingress {} // Comment if included