# FTP
FTP (File Transfer Protocol) [[Protocol|protokół]] używany do transferu plików z servera do klienta. 

**Cechy:**
1. FTP używa [[TCP IP]] do transferu danych.
2. FTP wymaga uwierzytelnienia loginem i hasłem
3. FTP używa [[TLS]] do zabezpieczeń.

**Tryby**
1. [[FTP active|aktywny]],
2. [[FTP passive|pasywny]].

**Tryby wysyłu danych:**
1. [[Stream processing|Stream mode]] - używane do wysyłu danych jako ciągły stream danych
2. [[Batch processing|Block mode]] - dzielimy dane na części i wysyłamy 
3. Compressed mode - używamy kompresji do danych i wysyłamy w paczkach.