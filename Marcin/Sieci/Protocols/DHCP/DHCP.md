---
sr-due: 2022-08-11
sr-interval: 3
sr-ease: 251
---

# DHCP
DHCP (Dynamic Host Configuration Protocol) odpowiedzialne jest za połączenie komputera/telefonu z lokalnym serverem DHCP i poprosić o [[IP adress|adres IP]], [[Subnet mask]], [[Gateway]], [[DNS]] dla tego urządzenia oraz o parametrach sieci niezbędnych do połączenia się z internetem.

**Cechy:**
1. Lokalny server DHCP musi ustnieć aby użyć DHCP
2. DHCP pozwala na automatyczne ustaiwenia IP i parametrów (DHCP jest szczególnie używane przez smartphone)
3. DHCP działa zarówno na [[IPv4]] jak i [[IPv6]]
4. DHCP pozwala na reużywanie IP adresów. Tzn. że jeżeli jakiś IP adres się zwalnia z sieci, to ten IP może zostać przypisany innemu narzędziu które właśnie podpina się pod sieć. Jest to szczególnie istotne w IPv4, ponieważ ilość adresów IPv4 jest ograniczona $2^{32} < 4.3 \text{ bilionów}$
5. DHCP server zarządza poolem IP adresów oraz informacje o kliencie (o telefonie, o pc)


**Proces uzyskania parametrów sieci i adresu IP:**
![[DHCP Setup Messages & Operations.png]]
1. Obiekt (np. pc, telefon) się z siecią
2. DHCP używa [[UDP]] z [[Port|portem]] 68 obiektu oraz z [[Port|portem]] 67 servera DHCP 
3. Obiekt wysyła wiadomość typu [[Server Discovery|server discovery]] aby uzyskać informacje o sieci
4. DHCP Server odpowiada wiadomością typu [[IP Lease Offer]] do obiektu
5. Następnie obiekt odpowiada wiadomością typu [[IP Lease Request]] na wiadomość z servera DHCP
6. DHCP Server odpowiada wiadomością typu [[IP Lease Acknowledgement]] pozwalając użyć adresu IP i parametrów sieci na **czas ograniczony.**

W sytuacji gdy łączymy się do sieci ponownie, to DHCP stara się dać ten sam [[IP adress|adres IP]], który był używany wcześniej przez obiekt. Jednakże jeżeli jakieś inne urządzenie już korzysta z tego IP lub mamy zdefiniowane jakieś reguły (np. wynikające z bezpieczeństwa aby nie otrzymywać tego samego IP gdy się łączymy) to dostaniemy nowy adres.

#review
