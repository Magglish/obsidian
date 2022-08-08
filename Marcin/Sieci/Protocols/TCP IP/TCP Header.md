# TCP Header
![[TCP Header.png]]

**Source Port & Destination Port** - dostarcza informacje o porcie źródła oraz destynacji.
Często używamy port:
- 20 dla [[FTP]]
- 21 dla [[FTP Control]] 
- 23 dla [[Telnet]]
- 25 dla [[SMTP]]
- 35 dla [[Private Printer Server Protocol]]
- 53 dla [[DNS]]
- 80 dla [[HTTP]]
- 123 dla [[NTP]]
- 143 dla [[IMAP]]

**Checksum** - dodane aby chronić TCP packet przed błędami. Header checksum jest sprawdzane za kazdym razem kiedy paczka jest przepuszczana przez sieć, dlatego, że paczka może ulec zmianie podczas jej transmisji. Jednakże w tym przypadku jeśli błąd jest wykryty, cała paczka danych jest porzucana i nie są robione żadne akcje naprawcze.
![[TCP Checksum computation.png]]
**Data offset** - mówi o tym gdzie dana paczka danych znajduje się w całej paczce danych.
**Options + Padding** - przechowywane są dodatkowe opcje ustawione przez źródło odnośnie wysyłki paczki. 
**Reserved** - zachowane dla przyszłego użytku
**PSH Flag** - PSH = 1 pcha dane do aplikacji do której chcemy wysłać dane. Pozwala aby dane mogły zostać szybko użyte przez aplikacje.
**URG Flag** - określa czy Urgent Pointer jest używany (jest na obrazku), który wskazuje ile ważnych/pilnych danych wchodzi #review