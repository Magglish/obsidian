# [[NAT]] działanie
1. Tłumaczy prywatny adres IP na publiczny
2. Założmy mamy dwa kompy 192.168.0.12 oraz 192.168.0.13 i router, który ma publiczny adres IP 15.3.45.12 .
3. Wysyłamy paczke danych z 192.168.0.12 do jakiejś strony o IP 17.34.123.4 i porcie 80.
4. Najpierw leci do routera i router otrzymuje informacje, że source-ip to 192.168.0.12, source-port to 34123 (jest to losowa wartość) a destination-ip to 17.34.123.4 oraz destination-port to 80.
5. router zamienia source-ip na swoje czyli 15.3.45.12 oraz source-port na swoj wymyślony np. 57129 i wysyła paczke danych do strony.
7. Strona odpowiada, wysylajac swoja odpowiedz do ip routera czyli 15.3.45.12 na port 57129
8. router otrzymuje ta paczke i on wie, ze wszystko co dostaje na port 57129 ma wyslac do komputera 192.168.0.12 na port 34123.

Gdybysmy chcieli wykonac operacje na odwrot czyli najpierw komunikacje zawiera strona. to musielibysmy zdefiniowac [[SNAT]] - router miałby w sobie zaszyte na sztywno numery portów które odpowiadają konkretnym komputerom.