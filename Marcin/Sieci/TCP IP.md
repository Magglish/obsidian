# TCP IP
TCP/IP (Transmission Control Protocol) stworzone przez departament obrony dla swojej sieci ARPANET (Advanced Research Projects Agency Network, 1968 - 1990). 

**Warstwy:**
![[Warstwy TCP IP.png]]

**Komunikacja w TCP/IP**
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
8. Ethernet H5 otrzymuje paczke i zczytuje nagłówek Ethernet z H1 

**Powiązane pojęcia:**
[[IMAP]], [[FTP]], [[SMTP]], [[DNS]], [[Telnet]], [[SNMP]], [[UDP]], [[MTU]]