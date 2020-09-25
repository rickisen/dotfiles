#!/bin/bash

# kundnr=E293783&password=page4848&submit.x=15&submit.y=20

# curl \
#   -X POST \
#   -H @headers \
#   -F kundnr=E293783 \
#   -F GCsession=E293783:3defa34474e9cbfad843bbd4acb21fad \
#   -F mac=B0%3A6E%3ABF%3ABA%3A80%3A76 \
#   -F force_change= \
#   -F broadband_serviceid= \
#   -F desc_B06EBFBA8076=DESKTOP \
#   -F status_B06EBFBA8076=inactive \
#   -F desc_000DB951051C=ROUTER \
#   -F status_000DB951051C=public \
#   -F desc_FCAA14203704=GATE \
#   -F status_FCAA14203704=inactive \
#   -F action=OK%2C+aktivera+min+enhet \
#   https://dhcp.bahnhof.se/cgi-bin/macmanager.cgi

# curl \
#   -X POST \
#   -H @headers \
#   -v \
#   -F kundnr="E293783" \
#   -F GCsession="E293783:3defa34474e9cbfad843bbd4acb21fad" \
#   -F mac="B0:6E:BF:BA:80:76" \
#   -F force_change="" \
#   -F broadband_serviceid="" \
#   -F desc_B06EBFBA8076="DESKTOP" \
#   -F status_B06EBFBA8076="inactive" \
#   -F desc_000DB951051C="ROUTER" \
#   -F status_000DB951051C="public" \
#   -F desc_FCAA14203704="GATE" \
#   -F status_FCAA14203704="inactive" \
#   -F action="OK, aktivera min enhet" \
#   https://dhcp.bahnhof.se/cgi-bin/macmanager.cgi

# the above requests didn't work, probably auth/session issue

# change this device to routers mac, -p changes back
# sudo macchanger --mac=00:0D:B9:51:05:1C enp0s31f6
sudo macchanger -p enp0s31f6
