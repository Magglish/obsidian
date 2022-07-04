# TCP IP Layers

![[Warstwy TCP IP.png]]

**Application Layer** - warstwa ta odpowiedzialna jest za stworzenie danych do wysyłki (Application Data File)
**Transport Layer** - warstwa ta odpowiedzialna jest za podział danych na mniejszcze części (TCP Payload Segments) i są one ponumerowane (TCP Sequence Numbers)
Internet Layer. Numery są używane do znalezienie brakujących elementów danych (innych payload segments) oraz posortowania ich w odpowiedniej kolejności.
**Internet Layer** - warstwa ta odpowiedzialna jest za dodanie do każdej części (TCP Payload Segments) adresy IP nadawcy i odbiorcy.
**Network Acces Layer** - warstwa określa w jaki sposób skomunikować się z odbiorcą (satelita, sięc 3G/4G/5G, bluethooth, wifi)
**Physical Layer** - warstwa określa z jakiego sprzetu skorzystamy do wysyłki (kabel, rotuer wifi, antena, laser)


**Powiązane pojęcia:**
[[IMAP]], [[FTP]], [[SMTP]], [[DNS]], [[Telnet]], [[SNMP]], [[UDP]], [[MTU]]