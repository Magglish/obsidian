# IPv6 Packet Header
IPv6 [[IP Packet|packet]] zawiera w sobie wszystkie niezbędne informacje by móc dostarczyć paczkę danych ze źródła do destynacji.

![[IPv6 Packet Header.png|600]]

**Version** - wersja IP packet
**DS oraz ECN** - Differentiated Services, Explicit Congestion Notification - sygnalizuje czy spowolonic wysyłke paczki danych w sytuacji gdy występują jakieś opóźnienia.
**Flow Label** - specjalny serwis dla aplikacji, które przekazują dane w czasie rzeczywistym. Jednakże obecnie jest to inaczej wykorzystywane - jako informacja dla routerów i switchy, że zmiany w routing nie powinny zostać zaaplikowane ponieważ te pakiety nie będą sortowane u dostarczyciela
**Payload length** - rozmiar IPv6 packet - $(2^{16}-1) = 65,535$ bitów. Możemy użyć [[IPv6 Jumbogram|paczki danych]] aby zwiększyć dane do 4GB.
**Next Header** - mówi o tym jakiego typu jest będzie następny header po IPv6 headerze.
**Extension header** - pozwala na dodanie innych headerów do IPv6 packet (np. [[IPv6 Jumbogram|Jumbo Payload Option]]). Najczęściej dodawane są ESP ([[Encapsulating Security Payload]]) lub AH ([[Authentication Header]]), rozszerzenia odpowiedzialne za bezpieczeństwo.
**Hop Limit** - specyfikuje przez jaki czas dana paczka może istnieć w sieci. Wartość hop limit zmniejszana za kazdym razem kiedy paczka przejdzie przez sieć.
**Source Address & Destination Address** - adresy źródła i destynacji