# OSPF
OSPF (Open Shortest Path First) najczęściej używany protokół [[IGP]]. Oparty o protokół [[TCP IP]] i działa [[TCP IP Internet Layer|na warstwie IP]].

1. Protokół dla [[IPv4]], [[IPv6]] oraz [[CIDR]]. 
2. Używany przez [[Gateway]], [[Router]]
3. Używa [[Link-state routing protocol]] routing algorytm.

**Operacje**
1. Routery zbierają link state informacje z innych routerów wewnątrz sieci autonomicznego systemu
2. Następnie tworzone jest [[Network Connection Map]] uwzględniające koszt linków
3. Gateways oraz Routery zupdateują swoje ip routing tables w oparciu o drzewo.
4. Jeśli wystąpią jakieś zmiany w sieci to kroki 1-3 są powtarzane.

**Koszt linków**
Uwzględnia:
1. Dystans od routera
2. RTT (Rount-Trip time) w sekundach (**co to jest?**)
3. Liczba rotuerów/switchy aby dojść do destynacji
4. Przepustowość (bit/s, packet/s)
5. Dostępność
6. Niezawodność

**Typy routerów**
1. IR (Internal Router) - wszystkie interfacey routingowe są w tej samej sieci
2. ABR (Area Border Router) - interfacy routingowe z subnetwork są połączone do głównej sieci (backbone network)
3. BR (Backbone Router) - router łączący do głównej sieci (backbone network)
4. ASBR (Autonomous System Boundary Router) - routing łączący różne autonomiczne systemy używając róznich routing protocols.

 #review