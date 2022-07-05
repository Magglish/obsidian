# CIDR
CIDR (Classles Inter-Domain Routing) to sposób zapisu [[IP adress|IP]] dla [[Network destination]] wraz z wielkością [[Subnet mask|subnetu]] (nazywa się to VLSM - Variable-Length Subnet Masking). Przykład:

$$165.132.9.0/25$$
Gdzie $165.132.9.0$ oznacza wprost adres ip dla Network destination, a $25$ oznacza liczbę jedynek w IP dla subnetu. Przez to można określić IP subnetu:

$$11111111.11111111.11111111.10000000 = 255.255.255.128$$
