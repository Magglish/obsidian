# FTP
FTP (File Transfer Protocol) [[Protocol|protokół]] używany do transferu plików z servera do klienta. 

**Cechy:**
1. FTP używa [[TCP IP]] do transferu danych.
2. FTP wymaga uwierzytelnienia loginem i hasłem
3. FTP używa [[TLS]] do zabezpieczeń.

**Tryby**
1. Active - klient wysyła wiadomość do servera z informacją o tym jakiego portu server musi użyć. Następnie server używa swojego [[Port|portu]] numer 20 do wysłania danych do klienta używając portu, który otrzymał w informacji od klienta.
2. Passive - używane kiedy klient jest chroniony [[Firewall|firewallem]] i nie może użyć protokołu TCP IP. Klient wysyła wiadomość z prośbą o inform