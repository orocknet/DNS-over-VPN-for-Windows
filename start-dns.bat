xcopy /d "DNS-over-VPN.pbk" %AppData%\Microsoft\Network\Connections\Pbk /y /i /h
start /wait rasdial "DNS-over-VPN" freedns freedns

netsh interface ipv4 set dnsserver name="Local Area Connection" static 127.0.0.1 primary
netsh interface ipv4 set dnsserver name="Ethernet" static 127.0.0.1 primary
netsh interface ipv4 set dnsserver name="Wi-Fi" static 127.0.0.1 primary
