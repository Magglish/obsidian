# OSPF
OSPF (Open Shortest Path First) najczęściej używany protokół [[IGP]]. 

1. Protokół dla [[IPv4]], [[IPv6]] oraz [[CIDR]]. 
2. Używany przez [[Gateway]], [[Router]]
3. Używa [[Link state]] routing algorytm.

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
1. IR (Internal Router) - wszystkie interfacey routingowe są w tej sa
2. ABR (Area Border Router)