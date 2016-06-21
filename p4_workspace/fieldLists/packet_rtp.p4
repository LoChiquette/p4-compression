/* List of all fields of a RTP Packet */

#ifndef PACKET_RTP_P4
#define PACKET_RTP_P4

#include "../headers/header_rtp.p4"
#include "packet_udp.p4"

field_list fields_RTPv4 {
	fields_UDPv4;
	rtp.version;
	rtp.pad;
	rtp.ext;
	rtp.nCRSC;
	rtp.marker;
	rtp.payloadType;
	rtp.sequenceNumber;
	rtp.timestamp;
	rtp.SSRC;
	rtp.listCRSC;
}

field_list fields_RTPv6 {
	fields_UDPv6;
	rtp.version;
	rtp.pad;
	rtp.ext;
	rtp.nCRSC;
	rtp.marker;
	rtp.payloadType;
	rtp.sequenceNumber;
	rtp.timestamp;
	rtp.SSRC;
	rtp.listCRSC;
}

#endif/*PACKET_RTP_P4*/