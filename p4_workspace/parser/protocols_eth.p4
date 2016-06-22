/******************************************************** 
 *	Differents protocols carried by an ethernet frame.	*
 ********************************************************/	

#ifndef PROTOCOLS_ETH_P4
#define PROTOCOLS_ETH_P4

#define PROTOCOL_ETH_IPv4 					0x0800	// Internet Protocol version 4 (IPv4)
#define PROTOCOL_ETH_ARP					0x0806	// Address Resolution Protocol (ARP)
#define PROTOCOL_ETH_TRILL 					0x22F3	// Wake-on-LAN
#define PROTOCOL_ETH_DCNET					0x6003 	// IETF TRILL Protocol
#define PROTOCOL_ETH_RARP					0x8035	// DECnet Phase IV
#define PROTOCOL_ETH_WAKE_ON_LAN			0x0842	// Reverse Address Resolution Protocol
#define PROTOCOL_ETH_APPLE_TALK				0x809B	// AppleTalk (Ethertalk)
#define PROTOCOL_ETH_AARP					0x80F3	// AppleTalk Address Resolution Protocol (AARP)
#define PROTOCOL_ETH_VLAN 					0x8100	// VLAN-tagged frame (IEEE 802.1Q) and Shortest Path Bridging IEEE 802.1aq
#define PROTOCOL_ETH_IPX 					0x8137	// IPX
#define PROTOCOL_ETH_QNET					0x8204	// QNX Qnet
#define PROTOCOL_ETH_IPv6					0x86DD	// Internet Protocol Version 6 (IPv6)
#define PROTOCOL_ETH_FLOW_CTRL				0x8808	// Ethernet flow control
#define PROTOCOL_ETH_COBRA_NET				0x8819	// CobraNet
#define PROTOCOL_ETH_MLPS_UNI				0x8847	// MPLS unicast
#define PROTOCOL_ETH_MLPS_MULTI				0x8848	// MPLS multicast
#define PROTOCOL_ETH_PPPOE_DISCOVERY_STAGE	0x8863	// PPPoE Discovery Stage
#define PROTOCOL_ETH_PPPOE_SESSION_STAGE	0x8864	// PPPoE Session Stage
#define PROTOCOL_ETH_JUMBO_FRAME			0x8870	// Jumbo Frames 
#define PROTOCOL_ETH_HOMEPLUG_1				0x887B	// HomePlug 1.0 MME
#define PROTOCOL_ETH_EAPOL					0x888E	// EAP over LAN (IEEE 802.1X)
#define PROTOCOL_ETH_PROFINET				0x8892	// PROFINET Protocol
#define PROTOCOL_ETH_HYPERSCSI				0x889A	// HyperSCSI (SCSI over Ethernet)
#define PROTOCOL_ETH_ATAOE					0x88A2	// ATA over Ethernet
#define PROTOCOL_ETH_ETHERCAT				0x88A4	// EtherCAT Protocol
#define PROTOCOL_ETH_BRIDGING_AND_SPB		0x88A8	// Provider Bridging (IEEE 802.1ad) & Shortest Path Bridging IEEE 802.1aq
#define PROTOCOL_ETH_POWERLINK				0x88AB	// Ethernet Powerlink
#define PROTOCOL_ETH_LLDP					0x88CC	// Link Layer Discovery Protocol (LLDP)
#define PROTOCOL_ETH_SERCOS_3				0x88CD	// SERCOS III
#define PROTOCOL_ETH_HOMEPLUG_AV_MME		0x88E1	// HomePlug AV MME
#define PROTOCOL_ETH_MEDIA_REDUNDANCY		0x88E3	// Media Redundancy Protocol (IEC62439-2)
#define PROTOCOL_ETH_MAC_SECURITY			0x88E5	// MAC security (IEEE 802.1AE)
#define PROTOCOL_ETH_PBB					0x88E7	// Provider Backbone Bridges (PBB) (IEEE 802.1ah)
#define PROTOCOL_ETH_PTPOE					0x88F7	// Precision Time Protocol (PTP) over Ethernet (IEEE 1588)
#define PROTOCOL_ETH_CFM_OAM				0x8902	// IEEE 802.1ag Connectivity Fault Management (CFM) Protocol / ITU-T Recommendation Y.1731 (OAM)
#define PROTOCOL_ETH_FCOE					0x8906	// Fibre Channel over Ethernet (FCoE)
#define PROTOCOL_ETH_FCOE_INIT				0x8914	// FCoE Initialization Protocol
#define PROTOCOL_ETH_ROCE					0x8915	// RDMA over Converged Ethernet (RoCE)
#define PROTOCOL_ETH_TTE					0x891D	// TTEthernet Protocol Control Frame (TTE)
#define PROTOCOL_ETH_HSR					0x892F	// High-availability Seamless Redundancy (HSR)
#define PROTOCOL_ETH_CONFIG_TEST			0x9000 	// Ethernet Configuration Testing Protocol

// TODO: Will diminish in number when the use of the flow information will be accessible
// Needed for custom compression
#define PROTOCOL_ETH_UNCOMPRESSED_IPv4		0x9001	// Uncompressed IPv4
#define PROTOCOL_ETH_UNCOMPRESSED_IPv6		0x9002	// Uncompressed IPv6

#define PROTOCOL_ETH_COMPRESSED_IPv4		0x9003	// Compressed IPv4
#define PROTOCOL_ETH_COMPRESSED_IPv6		0x9004	// Compressed IPv6
#define PROTOCOL_ETH_COMPRESSED_TCPv4		0x9005	// Compressed TCP on IPv4
#define PROTOCOL_ETH_COMPRESSED_TCPv6		0x9006	// Compressed TCP on IPv6
#define PROTOCOL_ETH_COMPRESSED_UDPv4		0x9007	// Compressed UDP on IPv4
#define PROTOCOL_ETH_COMPRESSED_UDPv6		0x9008	// Compressed UDP on IPv6
#define PROTOCOL_ETH_COMPRESSED_RTPv4		0x9009	// Compressed RTP on IPv4
#define PROTOCOL_ETH_COMPRESSED_RTPv6		0x900A	// Compressed RTP on IPv6

#endif /*PROTOCOLS_ETH_P4*/