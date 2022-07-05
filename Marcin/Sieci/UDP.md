# UDP
UDP (User Datagram Protocol) dostarca informacji o portach aby aplikacje mogły się ze sobą komunikować. UDP jest connectionless, czyli nie tworzy połączenia end-to-end aby sprawdzić otrzymane [[IP Packet|paczki danych]].

![[UDP.png]]
**Source Port & Destination Port** - najważniejszy element UDP, dostarcza informacje o porcie źródła oraz destynacji
**Length** - informuje o wielkości UDP, zarówno o nagłówku jak i o wielkości przesyłanych danych 
**Checksum** - dodane aby chronić UDP packet przed błędami, ale nie chroni danych! Header checksum jest sprawdzane za kazdym razem kiedy paczka jest przepuszczana przez sieć, dlatego, że paczka może ulec zmianie podczas jej transmisji. Jednakże w tym przypadku jeśli błąd jest wykryty, cała paczka danych jest porzucana i nie są robione żadne akcje naprawcze.