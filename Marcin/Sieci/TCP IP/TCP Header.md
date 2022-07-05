# TCP Header
![[TCP Header.png]]

**Source Port & Destination Port** - dostarcza informacje o porcie źródła oraz destynacji.
Często używamy port:
20 dla [[FTP]]
21 dla [[FTP Control]], 23 dla [[Telnet]]
**Checksum** - dodane aby chronić TCP packet przed błędami. Header checksum jest sprawdzane za kazdym razem kiedy paczka jest przepuszczana przez sieć, dlatego, że paczka może ulec zmianie podczas jej transmisji. Jednakże w tym przypadku jeśli błąd jest wykryty, cała paczka danych jest porzucana i nie są robione żadne akcje naprawcze.
![[TCP Checksum computation.png]]
**Data offset** - mówi o tym gdzie dana paczka danych znajduje się w całej paczce danych.
**Options + Padding** - przechowywane są dodatkowe opcje ustawione przez źródło odnośnie wysyłki paczki. 
**Reserved** - zachowane dla przyszłego użytku
****