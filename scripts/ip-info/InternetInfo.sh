#!/bin/bash

# greps for an ipv4-adress. Incase of captive portal or mitm, __
#							        |
#							        V
CurrentIp="$( curl -s icanhazip.com | grep -Eo '.*((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])' )"
VpnStatus="$( systemctl show openvpn@mullvad | grep "ActiveState=" | sed -e s?"ActiveState="?"Vpn "?)"
GeoIp="$( geoiplookup "$CurrentIp" | sed -e s?"GeoIP Country Edition: "?? | awk '{print $2}' )"

#make sure we don't timeout during disconnect
KillPing.sh &


# Check if we are connected to the internet (and can resolve dns)
if ! $( ping -c 1 -q google.com 2>/dev/null 1>/dev/null )
then
	echo "<fc=#ff0000> No internet connection </fc>" > /tmp/ipinfo.txt
else
	# if vpn connection is active, print vpn status in green. Otherwise red.
	if [[ "$VpnStatus" == "Vpn active" ]]
	then
		echo ""$CurrentIp," "$GeoIp," <fc=#93f91d>"$VpnStatus" </fc>" > /tmp/ipinfo.txt
	else
		echo ""$CurrentIp," "$GeoIp," <fc=#ff0000>"$VpnStatus" </fc>" > /tmp/ipinfo.txt
	fi
fi

# So that we won't accidentally execute the file.
chmod 666 /tmp/ipinfo.txt 
