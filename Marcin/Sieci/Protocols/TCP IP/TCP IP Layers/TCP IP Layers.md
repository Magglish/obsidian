# TCP IP Layers

![[Warstwy TCP IP.png]]

1. [[TCP IP Application Layer|Application Layer]],
2. [[TCP IP Application Layer|Application Layer]],
3. [[TCP IP Application Layer|Application Layer]],
[[TCP IP Application Layer|Application Layer]],5. asd




**Transport Layer** - warstwa ta odpowiedzialna jest za podział danych na mniejszcze części (TCP Payload Segments) i za ich ponumerowanie (TCP Sequence Numbers) Numery są używane do znalezienie brakujących elementów danych (innych payload segments) oraz posortowania ich w odpowiedniej kolejności.
Dodatkowo, transport layer dostarcza portów do konkretnych aplikacji na komputerze.
**Internet Layer** - warstwa ta odpowiedzialna jest za dodanie do każdej części (TCP Payload Segments) adresy IP nadawcy i odbiorcy. Dodatkowo internet layer dostarcza również fukcji routingowych.
**Network Acces Layer** - warstwa określa w jaki sposób skomunikować się z odbiorcą (satelita, sięc 3G/4G/5G, bluethooth, wifi). Dostarcza adresowanie, kontrole priorytetów, kontrole błędów, kontrole przepływów (w sieciach [[LAN]] ta warstwa określana jest jako [[MAC]]).
**Physical Layer** - warstwa określa z jakiego sprzetu skorzystamy do wysyłki (kabel, rotuer wifi, antena, laser)