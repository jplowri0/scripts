#!/bin/bash

ip_only="$(./IpInfo.sh)"

echo "$ip_only" | sed -n '/IP Address:/ {
    s/IP Address:/IP Address:/
    p
    
    }'