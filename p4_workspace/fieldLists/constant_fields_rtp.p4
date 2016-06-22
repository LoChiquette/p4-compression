/* List of fields constant for RTP headers */

#ifndef CONSTANT_FIELDS_RTP_P4
#define CONSTANT_FIELDS_RTP_P4

#include "../headers/header_rtp.p4"
#include "constant_fields_udp.p4"

field_list static_fields_RTPv4 {
	static_fields_UDPv4;
	rtp.version;
	rtp.pad;
	rtp.SSRC;
}

field_list static_fields_RTPv6 {
	static_fields_UDPv6;
	rtp.version;
	rtp.pad;
	rtp.SSRC;
}

#endif/*CONSTANT_FIELDS_UDP_P4*/