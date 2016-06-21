/* VLAN header */

#ifndef HEADER_VLAN_P4
#define HEADER_VLAN_P4

header_type VLAN_t {
	fields {
		// Priority Code Point (1<0<2<3<4<5<6<7)
		bit<3> pcp;
		
		// Drop Eligible Indicator
		bit<1> cfi;
		
		// VLAN Identifier
		bit<12> vid;	

		// Type of protocol or length of the user data
		bit<16> ethertype;
	}
}

header VLAN_t vlan;

#endif/*HEADER_VLAN_P4*/