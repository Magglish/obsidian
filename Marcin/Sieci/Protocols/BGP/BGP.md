# BGP
BGP (Border Gateway Protocol). Jest to [[Protocol|protokół]] obecnie używany obecnie przez internet (używamy wersji BGP4). Jego odmiany to [[eBGP]] używany do routing pomiędzy systemami oraz [[iBGP]] używany do routingu wewnątrz systemu. Wykorzystuje protokół [[Path-vector routing protocol]] do określenia routerów w sieci.

**BGP security**
Zapewnienie bezpieczeństwa w BGP jest trudne ponieważ, BGP routery należą do różnych sieci [[ISP]]. Oznacza to, że każdy router może mieć inne szyfrowanie i inne schematy bezpieczeństwa. Konsekwencjami tego mogą być słabe punkty w zakresie bezpieczeństwa - np. cięzko jest zautentykować wiadomości kiedy każdy z routerów ma inny schemat bezpieczeńśtwa, w efekcie czego przez zabezpieczenia może przejść jakiś malware.