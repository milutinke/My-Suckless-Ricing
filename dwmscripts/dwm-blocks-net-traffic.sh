#!/bin/bash

if grep -xq 'up' /sys/class/net/w*/operstate 2>/dev/null ; then
	wifiicon="$(awk '/^\s*w/ { print "﬉", int($3 * 100 / 70) "% " }' /proc/net/wireless)"
elif grep -xq 'down' /sys/class/net/w*/operstate 2>/dev/null ; then
	grep -xq '0x1003' /sys/class/net/w*/flags && wifiicon="ﲁ " || wifiicon="睊 "
fi

printf "%s%s%s " "$wifiicon" "$(sed "s/down//;s/up//" /sys/class/net/e*/operstate 2>/dev/null)" "$(sed "s/.*//" /sys/class/net/tun*/operstate 2>/dev/null)"

IF=$1
if [ -z "$IF" ]; then
        IF=`ls -1 /sys/class/net/ | head -1`
fi

R1=`cat /sys/class/net/${IF}/statistics/rx_bytes`
T1=`cat /sys/class/net/${IF}/statistics/tx_bytes`
sleep 1
R2=`cat /sys/class/net/${IF}/statistics/rx_bytes`
T2=`cat /sys/class/net/${IF}/statistics/tx_bytes`
TBPS=`expr $T2 - $T1`
RBPS=`expr $R2 - $R1`
TKBPS=`expr $TBPS / 1024`
RKBPS=`expr $RBPS / 1024`
icon="⬇"
icon1="⬆"
printf "%s%s %s%s" "$icon" "$RKBPS KB" "$icon1" "$TKBPS KB"

