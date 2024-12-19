#!/bin/sh

export ip_addr=
export wireguard_name=

if ping -c1 -W1 $ip_addr; then
	echo "Wireguard is up"
else
	wg-quick down $wireguard_name 
	wg-quick up $wireguard_name 
fi

