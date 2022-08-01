# ARP
ARP (Address Resolution Protocol) [[Protocol|protokół]], który mapuje adresy IPv4 i IPv6 ( w przypadku IPv6 używamy [[NDP]] dla celów ARP) (z warstwy [[TCP IP Internet Layer]] lub [[OSI Network Layer]]) do IP urządzenia ([[TCP IP Network Access Layer]] lub [[OSI Data Link Layer]]).

Przykład: mapowanie adresu MAC Ethernet do IPv4 adresu.



![[ARP Packet Parameters.png]]

**Hardware type** - Typ sprzetu (np. Ethernet, Wi-Fi)
**Protocl type** - typ protokołu np. IPv4, IPv6, 
**Hardware adress lenght** - długość adresu hardware (w bitach)
**Protocol adress lenght** - długość adresu protokołu (w bitach)
**Operation** - request albo reply
**Sender hardware address** - adres hardware nadawcy
**Sender protocl address** - adres protokołu nadawcy
**Target hardware address** - adres hardware odbiorcy
**Target protocl address** - adres protokołu odbiorcy