#!/bin/sh

curl "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/direct-list.txt" -o "./data/direct-list.txt"
curl "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/reject-list.txt" -o "./data/reject-list.txt"
curl "https://cdn.jsdelivr.net/gh/Masaiki/GeoIP2-CN@release/CN-ip-cidr.txt" -o "./data/CN-ip-cidr.txt"
curl "https://anti-ad.net/domains.txt" -o "./data/ad-domains.txt"
sudo systemctl restart mosdns
