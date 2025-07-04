#!/bin/bash

# MCW Phantom Sentinel - IP Logger
# By Hacker Asad

read -p "Enter IP address to track: " ip

echo -e "\n[+] Getting information for IP: $ip\n"

curl -s "http://ip-api.com/json/$ip" | jq '. | {
  IP: .query,
  Country: .country,
  Region: .regionName,
  City: .city,
  ISP: .isp,
  Org: .org,
  Latitude: .lat,
  Longitude: .lon,
  Timezone: .timezone
}'
