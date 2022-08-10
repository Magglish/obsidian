---
sr-due: 2022-08-11
sr-interval: 1
sr-ease: 185
---

# Port
Port to numer używany do identyfikacji procesów działających w systemie. Port jest jednym z elementów [[Socket|gniazda (socketa)]].

Numery portów reprezentowane są przez liczby naturalne od $0$ do $(2^{16}-1 = 65535$. Niektóre numery portów (od $0$ do $1023$) są znane z góry i zarezerwowane dla standardowych usług. Dzięki temu można łatwo zidentyfikować proces na danym urządzeniu np:

20 - [[FTP]]
22 - [[SSH]]
25 - [[SMTP]]
53 - [[DNS]]
80 - [[HTTP]]
143 - [[IMAP]]
443 - [[HTTPS]]
389 - [[LDAP]]
8080 - dodatkowe servery

Numery od $1024$ do $49151$ są zarezerwowane przez [IANA](https://www.iana.org/) a numery od $49152$ do $65535$ jako dynamiczne/prywatne
#review