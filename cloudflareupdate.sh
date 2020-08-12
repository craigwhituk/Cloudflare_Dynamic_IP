#!/bin/sh
wanip=$(dig +short myip.opendns.com @resolver1.opendns.com)

curl -X PUT "https://api.cloudflare.com/client/v4/zones/REPLACE_WITH_ZONE_ID/dns_records/REPLACE_WITH_DNS_RECORD_ID" \
     -H "X-Auth-Email: REPLACE_WITH_CLOUDFLARE_USERNAME" \
     -H "X-Auth-Key: REPALCE_WITH_APIKEY" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"REPLACE_WITH_A_RECORD","content":"'"$wanip"'","ttl":1,"proxied":true}'
