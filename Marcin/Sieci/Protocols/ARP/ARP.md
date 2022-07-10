# ARP
ARP (Address Resolution Protocol) [[Protocol|protokół]], który mapuje adresy IPv4 i IPv6 (z warstwy [[TCP IP Int]]) do IP [[DLL|Data Link Layer]] urządzenia.

Przykład: mapowanie adresu MAC Ethernet do IPv4 adresu.

W  przypadku IPv6 używamy [[NDP]] dla celów ARP

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