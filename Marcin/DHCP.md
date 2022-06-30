# DHCP
DHCP (Dynamic Host Configuration Protocol) odpowiedzialne jest za połączenie komputera/telefonu z lokalnym serverem DHCP i poprosić o [[IP adress|adres IP]], [[Subnet mask]], [[Default Gateway]], [[DNS]] dla tego urządzenia oraz o parametrach sieci niezbędnych do połączenia się z internetem.

Cechy:
1. Lokalny server DHCP musi ustnieć aby użyć DHCP
2. DHCP pozwala na automatyczne ustaiwenia IP i parametrów (DHCP jest szczególnie używane przez smartphone)
3. DHCP działa zarówno na [[IPv4]] jak i [[IPv6]]
4. DHCP pozwala na reużywanie IP adresów. Tzn. że jeżeli jakiś IP adres się zwalnia z sieci, to ten IP może zostać przypisany innemu narzędziu które właśnie podpina się pod sieć. Jest to szczególnie istotne w IPv4, ponieważ ilość adresów IPv4 jest ograniczona $2^{32} < 4.3 \text{ bilionów}$
5. DHCP server zarządza poolem IP adresów oraz informacje o kliencie (o telefonie, o pc)


Proces działania DHCP:
1. Obiekt (np. pc, telefon) się z siecią
2. DHCP używa [[UDP]] z portem 68 obiektu oraz z portem 67 servera DHCP 