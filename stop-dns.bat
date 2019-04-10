@echo off
start /wait rasphone -h "DNS-over-VPN"
netsh interface ipv4 set dnsserver name="Local Area Connection" source=dhcp
netsh interface ipv4 set dnsserver name="Ethernet" source=dhcp
netsh interface ipv4 set dnsserver name="Wi-Fi" source=dhcp
