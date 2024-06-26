# IPv4 Packet Header
IPv4 [[IP Packet|packet]] zawiera w sobie wszystkie niezbędne informacje by móc dostarczyć paczkę danych ze źródła do destynacji.

![[IPv4 Packet Header.png|800]]

**Version** - wersja IP packet
**IHL** - długość IPv4 Header w bitach 
**DS oraz ECN** - Differentiated Services, Explicit Congestion Notification - sygnalizuje czy spowolonic wysyłke paczki danych w sytuacji gdy występują jakieś opóźnienia
**Total length** - totalna długość paczki danych. Maksymalna wartość to $(2^{16}-1) = 524,280$ bitów. Niestety jednak nie użyjemy całej przestrzeni, ponieważ IPv4 packet jest ograniczony przez wielkość *frame size* drugiej warstwy ([[TCP IP Transport Layer|transport layer]]) 
**Identification** - identyfikator dla IPv4 packet. Używany razem z Destionation Adress, Source Adress and Protocol.
**Flags & Fragment Offset** - używane do fragmentacki pakietu danych, jeśli jest zbyt duży aby przejść przez daną sieć. 
Flags określa czy dany pakiet fragmentować czy nie, oraz czy jest to ostatni fragment czy jeszcze będą kolejne po nim.
Fragment Offset mówi o tym gdzie dana paczka danych znajduje się w całej paczce danych.
**Time to live** - specyfikuje przez jaki czas dana paczka może istnieć w sieci. Wartość time to live zmniejszana za kazdym razem kiedy paczka przejdzie przez sieć.
**Protocol** - mówi o tym jakiego typu jest będzie następny header po IPv4 headerze (zobacz sobie na diagram w [[TCP IP Network Operations]] po 6 krokach. Tam są dodane headery do paczki danych).
**Header Checksum** - dodane aby chronić IPv4 packet przed błędami, ale nie chroni danych! Header checksum jest sprawdzane za kazdym razem kiedy paczka jest przepuszczana przez sieć, dlatego, że paczka może ulec zmianie podczas jej transmisji.
**Source Address & Destination Address** - adresy źródła i destynacji
**Options + Padding** - przechowywane są dodatkowe opcje ustawione przez źródło odnośnie wysyłki paczki. 


