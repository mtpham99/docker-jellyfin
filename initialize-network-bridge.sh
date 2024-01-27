#!/bin/sh

PARENT="wlp82s0"
BRIDGE_NAME="docker-ipvlanbr"
BRIDGE_IP="192.168.0.64/32"
BRIDGE_SUBNET="192.168.0.64/26"

if [ -x "/usr/bin/ip" ] ; then
	if [ -z "$(ip link | grep $BRIDGE_NAME)" ] ; then
		ip link add $BRIDGE_NAME link $PARENT type ipvlan mode l2  # replace "ipvlan" with "macvlan" for macvlan networking and remove mode l2
		ip link set $BRIDGE_NAME up
		ip addr add $BRIDGE_IP dev $BRIDGE_NAME
		ip route add $BRIDGE_SUBNET dev $BRIDGE_NAME
	else
		echo "Bridge network already setup. Exiting."
	fi
	ip link
else
	echo "Error missing iproute utility \"ip\". Exiting."
fi
