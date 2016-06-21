/* List of all fields of a TCP Packet */

#ifndef PACKET_TCP_P4
#define PACKET_TCP_P4

#include "../headers/header_tcp.p4"
#include "packet_ipv4.p4"
#include "packet_ipv6.p4"

field_list fields_TCPv4 {
	fields_IPv4;
	tcp.srcPort;
	tcp.dstPort;
	tcp.sequenceNum;
	tcp.ackNum;
	tcp.dataOffset;
	tcp.reserved;
	tcp.ns;
	tcp.cwr;
	tcp.ece;
	tcp.urg;
	tcp.ack;
	tcp.psh;
	tcp.rst;
	tcp.syn;
	tcp.fin;
	tcp.window;
	tcp.chksum;
	tcp.urgPtr;
	tcp.options;
}

field_list fields_TCPv6 {
	fields_IPv6;
	tcp.srcPort;
	tcp.dstPort;
	tcp.sequenceNum;
	tcp.ackNum;
	tcp.dataOffset;
	tcp.reserved;
	tcp.ns;
	tcp.cwr;
	tcp.ece;
	tcp.urg;
	tcp.ack;
	tcp.psh;
	tcp.rst;
	tcp.syn;
	tcp.fin;
	tcp.window;
	tcp.chksum;
	tcp.urgPtr;
	tcp.options;
}

#endif/*PACKET_TCP_P4*/