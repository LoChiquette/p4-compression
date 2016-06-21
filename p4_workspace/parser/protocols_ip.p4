/************************************************ 
 *	Differents protocols carried by an ip frame	*
 ************************************************/	
 
#ifndef PROTOCOLS_IP_P4
#define PROTOCOLS_IP_P4

#define PROTOCOL_IP_ICMP					0x01	// Internet Control Message Protocol	
#define PROTOCOL_IP_IGMP					0x02	// Internet Group Management Protocol	
#define PROTOCOL_IP_GGP						0x03	// Gateway-to-Gateway Protocol	
#define PROTOCOL_IP_IP_IN_IP				0x04	// IP in IP (encapsulation)	
#define PROTOCOL_IP_ST						0x05	// Internet Stream Protocol	
#define PROTOCOL_IP_TCP						0x06	// Transmission Control Protocol	
#define PROTOCOL_IP_CBT						0x07	// Core-based trees	
#define PROTOCOL_IP_EGP						0x08	// Exterior Gateway Protocol	
#define PROTOCOL_IP_IGP						0x09	// Interior Gateway Protocol (any private interior gateway (used by Cisco for their IGRP))	
#define PROTOCOL_IP_BBN_RCC_MON				0x0A	// BBN RCC Monitoring	
#define PROTOCOL_IP_NVP_2					0x0B	// Network Voice Protocol	
#define PROTOCOL_IP_PUP						0x0C	// Xerox PUP	
#define PROTOCOL_IP_ARGUS					0x0D	// ARGUS	
#define PROTOCOL_IP_EMCON					0x0E	// EMCON	
#define PROTOCOL_IP_XNET					0x0F	// Cross Net Debugger	
#define PROTOCOL_IP_CHAOS					0x10	// Chaos	
#define PROTOCOL_IP_UDP						0x11	// User Datagram Protocol	
#define PROTOCOL_IP_MUX						0x12	// Multiplexing	
#define PROTOCOL_IP_DCN_MEAS				0x13	// DCN Measurement Subsystems	
#define PROTOCOL_IP_HMP						0x14	// Host Monitoring Protocol	
#define PROTOCOL_IP_PRM						0x15	// Packet Radio Measurement	
#define PROTOCOL_IP_XNS_IDP					0x16	// XEROX NS IDP	
#define PROTOCOL_IP_TRUNK_1					0x17	// Trunk-1
#define PROTOCOL_IP_TRUNK_2					0x18	// Trunk-2	
#define PROTOCOL_IP_LEAF_1					0x19	// Leaf-1	
#define PROTOCOL_IP_LEAF_2					0x1A	// Leaf-2	
#define PROTOCOL_IP_RDP						0x1B	// Reliable Datagram Protocol	
#define PROTOCOL_IP_IRTP					0x1C	// Internet Reliable Transaction Protocol	
#define PROTOCOL_IP_ISO_TP4					0x1D	// ISO Transport Protocol Class 4	
#define PROTOCOL_IP_NETBLT					0x1E	// Bulk Data Transfer Protocol	
#define PROTOCOL_IP_MFE_NSP					0x1F	// MFE Network Services Protocol	
#define PROTOCOL_IP_MERIT_INP				0x20	// MERIT Internodal Protocol	
#define PROTOCOL_IP_DCCP					0x21	// Datagram Congestion Control Protocol	
#define PROTOCOL_IP_THIRDPC					0x22	// Third Party Connect Protocol	
#define PROTOCOL_IP_IDPR					0x23	// Inter-Domain Policy Routing Protocol	
#define PROTOCOL_IP_XTP						0x24	// Xpress Transport Protocol	
#define PROTOCOL_IP_DDP						0x25	// Datagram Delivery Protocol	
#define PROTOCOL_IP_IDPR_CMTP				0x26	// IDPR Control Message Transport Protocol	
#define PROTOCOL_IP_TPPP					0x27	// TP++ Transport Protocol	
#define PROTOCOL_IP_IL						0x28	// IL Transport Protocol	
#define PROTOCOL_IP_IPv6					0x29	// IPv6 Encapsulation	
#define PROTOCOL_IP_SDRP					0x2A	// Source Demand Routing Protocol	
#define PROTOCOL_IP_IDRP					0x2D	// Inter-Domain Routing Protocol
#define PROTOCOL_IP_RSVP					0x2E	// Resource Reservation Protocol
#define PROTOCOL_IP_GRE						0x2F	// Generic Routing Encapsulation
#define PROTOCOL_IP_MHRP					0x30	// Mobile Host Routing Protocol
#define PROTOCOL_IP_BNA						0x31	// BNA
#define PROTOCOL_IP_I_NLSP					0x34	// Integrated Net Layer Security Protocol
#define PROTOCOL_IP_SWIPE					0x35	// SwIPe
#define PROTOCOL_IP_NARP					0x36	// NBMA Address Resolution Protocol
#define PROTOCOL_IP_MOBILE					0x37	// IP Mobility (Min Encap)
#define PROTOCOL_IP_TLSP					0x38	// Transport Layer Security Protocol (using Kryptonet key management)
#define PROTOCOL_IP_SKIP					0x39	// Simple Key-Management for Internet Protocol
#define PROTOCOL_IP_ICMPv6					0x3A	// ICMP for IPv6
#define PROTOCOL_IP_INTERNAL_HOST			0x3D	// Any host internal protocol
#define PROTOCOL_IP_CFTP					0x3E	// CFTP
#define PROTOCOL_IP_LOCAL_NETWORK			0x3F	// Any local network
#define PROTOCOL_IP_SAT_EXPAK				0x40	// SATNET and Backroom EXPAK
#define PROTOCOL_IP_KRYPTOLAN				0x41	// Kryptolan
#define PROTOCOL_IP_RVD						0x42	// MIT Remote Virtual Disk Protocol
#define PROTOCOL_IP_IPPC					0x43	// Internet Pluribus Packet Core
#define PROTOCOL_IP_DISTRIBUTED_FILE_SYS	0x44	// Any distributed file system
#define PROTOCOL_IP_SAT_MON					0x45	// SATNET Monitoring
#define PROTOCOL_IP_VISA					0x46	// VISA Protocol
#define PROTOCOL_IP_IPCU					0x47	// Internet Packet Core Utility
#define PROTOCOL_IP_CPNX					0x48	// Computer Protocol Network Executive
#define PROTOCOL_IP_CPHB					0x49	// Computer Protocol Heart Beat
#define PROTOCOL_IP_WSN						0x4A	// Wang Span Network
#define PROTOCOL_IP_PVP						0x4B	// Packet Video Protocol
#define PROTOCOL_IP_BR_SAT_MON				0x4C	// Backroom SATNET Monitoring
#define PROTOCOL_IP_SUN_ND					0x4D	// SUN ND PROTOCOL-Temporary
#define PROTOCOL_IP_WB_MON					0x4E	// WIDEBAND Monitoring
#define PROTOCOL_IP_WB_EXPAK				0x4F	// WIDEBAND EXPAK
#define PROTOCOL_IP_ISO_IP					0x50	// International Organization for Standardization Internet Protocol
#define PROTOCOL_IP_VMTP					0x51	// Versatile Message Transaction Protocol
#define PROTOCOL_IP_SECURE_VMTP				0x52	// Secure Versatile Message Transaction Protocol
#define PROTOCOL_IP_VINES					0x53	// VINES
#define PROTOCOL_IP_TTP						0x54 	// TTP or Internet Protocol Traffic Manager
#define PROTOCOL_IP_NSFNET_IGP				0x55	// NSFNET-IGP
#define PROTOCOL_IP_DGP						0x56	// Dissimilar Gateway Protocol
#define PROTOCOL_IP_TCF						0x57	// TCF
#define PROTOCOL_IP_EIGRP					0x58	// EIGRP	
#define PROTOCOL_IP_OSPF					0x59	// Open Shortest Path First
#define PROTOCOL_IP_SPRITE_RPC				0x5A	// Sprite RPC Protocol
#define PROTOCOL_IP_LARP					0x5B	// Locus Address Resolution Protocol
#define PROTOCOL_IP_MTP						0x5C	// Multicast Transport Protocol
#define PROTOCOL_IP_AX_25					0x5D	// AX.25
#define PROTOCOL_IP_IPIP					0x5E	// IP-within-IP Encapsulation Protocol
#define PROTOCOL_IP_MICP					0x5F	// Mobile Internetworking Control Protocol
#define PROTOCOL_IP_SCC_SP					0x60	// Semaphore Communications Sec. Pro
#define PROTOCOL_IP_ETHERIP					0x61	// Ethernet-within-IP Encapsulation
#define PROTOCOL_IP_ENCAP					0x62	// Encapsulation Header
#define PROTOCOL_IP_PRIVATE_ENCRYPT_SCHEME	0x63	// Any private encryption scheme
#define PROTOCOL_IP_GMTP					0x64	// GMTP
#define PROTOCOL_IP_IFMP					0x65	// Ipsilon Flow Management Protocol
#define PROTOCOL_IP_PNNI					0x66	// PNNI over IP
#define PROTOCOL_IP_PIM						0x67	// Protocol Independent Multicast
#define PROTOCOL_IP_ARIS					0x68	// IBM's ARIS (Aggregate Route IP Switching) Protocol
#define PROTOCOL_IP_SCPS					0x69	// SCPS (Space Communications Protocol Standards)
#define PROTOCOL_IP_QNX						0x6A	// QNX
#define PROTOCOL_IP_A_N						0x6B	// Active Networks
#define PROTOCOL_IP_IP_COMP					0x6C	// IP Payload Compression Protocol
#define PROTOCOL_IP_SNP						0x6D	// Sitara Networks Protocol
#define PROTOCOL_IP_COMPAQ_PEER				0x6E	// Compaq Peer Protocol
#define PROTOCOL_IP_IPX_IN_IP				0x6F	// IPX in IP
#define PROTOCOL_IP_VRRP					0x70	// Virtual Router Redundancy Protocol, Common Address Redundancy Protocol (not IANA assigned)
#define PROTOCOL_IP_PGM						0x71	// PGM Reliable Transport Protocol
#define PROTOCOL_IP_ZERO_HOP				0x72	// Any 0-hop protocol
#define PROTOCOL_IP_L2_TP					0x73	// Layer Two Tunneling Protocol Version 3
#define PROTOCOL_IP_DDX						0x74	// D-II Data Exchange (DDX)
#define PROTOCOL_IP_IATP					0x75	// Interactive Agent Transfer Protocol
#define PROTOCOL_IP_STP						0x76	// Schedule Transfer Protocol
#define PROTOCOL_IP_SRP						0x77	// SpectraLink Radio Protocol
#define PROTOCOL_IP_UTI						0x78	// Universal Transport Interface Control
#define PROTOCOL_IP_SMP						0x79	// Simple Message Protocol
#define PROTOCOL_IP_SM						0x7A	// Simple Multicast Protocol
#define PROTOCOL_IP_PTP						0x7B	// Performance Transparency Protocol
#define PROTOCOL_IP_IS_IS_OVER_IP			0x7C	// Intermediate System to Intermediate System Protocol over IPv4
#define PROTOCOL_IP_FIRE					0x7D	// Flexible Intra-AS Routing Environment
#define PROTOCOL_IP_CRTP					0x7E	// Combat Radio Transport Protocol
#define PROTOCOL_IP_CRUDP					0x7F	// Combat Radio User Datagram
#define PROTOCOL_IP_SSCOPMCE				0x80	// Service-Specific Connection-Oriented Protocol in a Multilink and Connectionless Environment
#define PROTOCOL_IP_IPLT					0x81	// IPLT
#define PROTOCOL_IP_SPS						0x82	// Secure Packet Shield
#define PROTOCOL_IP_PIPE					0x83	// Private IP encapsulation within IP
#define PROTOCOL_IP_SCTP					0x84	// Stream Control Transmission Protocol
#define PROTOCOL_IP_FC						0x85	// Fibre Channel
#define PROTOCOL_IP_RSVP_E2E_IGNORE			0x86	// Reservation Protocol End-to-End Ignore
#define PROTOCOL_IP_UDP_LITE				0x88	// Lightweight User Datagram Protocol
#define PROTOCOL_IP_MPLS_IN_IP				0x89	// Multiprotocol Label Switching Encapsulated in IP
#define PROTOCOL_IP_MANET					0x8A	// MANET Protocols
#define PROTOCOL_IP_HIP						0x8B	// Host Identity Protocol
#define PROTOCOL_IP_SHIM_6					0x8C	// Site Multihoming by IPv6 Intermediation
#define PROTOCOL_IP_WESP					0x8D	// Wrapped Encapsulating Security Payload
#define PROTOCOL_IP_ROHC					0x8E	// Robust Header Compression
#define PROTOCOL_IP_RESERVED				0xff	// Reserved


/****************************
 *	IPv6 extension headers	*
 ****************************/

#define IP_EXTENSION_HOP_BY_HOP				0x00	// IPv6 Hop-by-Hop Option	
#define IP_EXTENSION_ROUTING				0x2B	// Routing Header for IPv6
#define IP_EXTENSION_FRAGMENT				0x2C	// Fragment Header for IPv6
#define IP_EXTENSION_ESP					0x32	// Encapsulating Security Payload
#define IP_EXTENSION_AH						0x33	// Authentication Header
#define IP_EXTENSION_NO_TXT					0x3B	// No Next Header for IPv6
#define IP_EXTENSION_DESTINATION			0x3C	// Destination Options for IPv6
#define IP_EXTENSION_MOBILITY_HEADER		0x87 	// Mobility Extension Header for IPv6

#endif /*PROTOCOLS_IP_P4*/