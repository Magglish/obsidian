# FTP
FTP (File Transfer Protocol) [[Protocol|protokół]] używany do transferu plików z servera do klienta. 

**Cechy:**
1. FTP używa [[TCP IP]] do transferu danych.
2. FTP wymaga uwierzytelnienia loginem i hasłem
3. FTP używa [[TLS]] do zabezpieczeń.

**Tryby**
1. Active - 
	1. klient wysyła wiadomość do servera z informacją o tym jakiego portu server musi użyć. 
	2. Następnie server używa swojego [[Port|portu]] numer 20 do wysłania danych do klienta używając portu, który otrzymał w informacji od klienta.
2. Passive - używane kiedy klient jest chroniony [[Firewall|firewallem]] i nie może użyć protokołu TCP IP. 
	1. Klient wysyła wiadomość z prośbą o informacje do servera. 
	2. Server odpowiada, wysyłając adres IP i port.
	3. Klient otwiera jakiś swój port i wysyła dane do adresu servera IP i portu

**Tryby wysyłu danych:**
1. Stream mode - używane do wysyłu danych jako ciągły stream danych
2. Block mode
3. Compressed mode