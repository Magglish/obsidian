# TCP Header
![[TCP Header.png]]

**Source Port & Destination Port** - dostarcza informacje o porcie źródła oraz destynacji
**Checksum** - dodane aby chronić TCP packet przed błędami. Header checksum jest sprawdzane za kazdym razem kiedy paczka jest przepuszczana przez sieć, dlatego, że paczka może ulec zmianie podczas jej transmisji. Jednakże w tym przypadku jeśli błąd jest wykryty, cała paczka danych jest porzucana i nie są robione żadne akcje naprawcze.