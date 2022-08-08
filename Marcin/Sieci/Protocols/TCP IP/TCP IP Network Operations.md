# TCP IP Network Operations

![[Komunikacja w TCP IP.png]]

1. Chcemy przekazac plik z komputera H1 na komputer H5.
2. Plik jest dzielony korzystajac z [[MTU]]
3. Nagłówek TCP dodawany jest do paczki którą przesyłamy
4. Między H1 an H5 następuje 3 way handshake:
![[H1 H5 handshake.png|200]]
SYN - Synchronus, ACK - Acknowledge
Ważne: TCP flow i zarządzanie błędami jest kontrolowane tylko przez komputery H1 i H5 (Router nie ma znaczenia)
5. Nagłówek [[IP adress|IP]] (zawierające źródłowe IP oraz docelowe IP) są dodawane do paczki którą przesyłamy
6. Nagłówek [[Ethernet]] jest dodawany

Po 6 krokach wygląda to tak:

![[Komunikacja w TCP IP 6 krokow.png]]

7. Taka paczka przekazywana jest do routerów korzystające z ip routing tables  
8. Ethernet H5 otrzymuje paczke i zczytuje nagłówek Ethernet z H1 do wykrycia błędów. Jeśli wykryje to prosi o retransmisje
9. Następnie zczytywany jest nagłówek IP wraz z funkcjami kontrolnymi, które są sprawdzane (np. [[IPv4 ECN]])
10. Następnie zczytywany jest nagłówek TCP/IP, który kontroluje wielkość okienka decydując o rozmiarze transferu danych. W tym kroku zczytywany jest również adres portu aby połączyć się z Appką na H5.
11. Następnie zacztywana jest paczka i podzielone elementy pliku są łączone w całość.
12. Plik przekazywany jest do apki na H5. #review