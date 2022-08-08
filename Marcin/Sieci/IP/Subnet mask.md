# Subnet mask
1. Internet podzielony jest na subnets, a kolejne subnety podzielone na jeszcze mniejsze subnety. 
2. Subnet mask zależy od wielkości subnetu, do której jest połączony klient (np. PC, telefon).
3. [[IP adress|Adres IP]] Subnet Mask jest w postaci [[IPv4]] lub [[IPv6]] i po przekształceniu adresu IP do postaci binarnej, 1 i 0 od lewej strony są MSB (*most significant bit*) po prawą stronę gdzie są LSB (*least significant bit*). 
4. Celem subnet mask jest filtrowanie IPików - czy znajdują się w danym subnecie.
5. IP Subnet Mask może powiedzieć o wielkości danego subnetu. Przykład
$$255.255.252.0$$
Po przekształceniu w bity:
$$11111111.11111111.11111100.00000000$$
Liczba zer (w tym przypadku 10) określa wielkość subnetu $2^{10}=1024$ adresów IP
W praktyce jednak, często używana jest notacja [[CIDR]] aby określić wielkość subnetu. #review