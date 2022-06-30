# IP Gateway and Router Configuration
**Projekt z kursu na [Coursera](https://www.coursera.org/learn/tcpip)**

![[IP Gateway and Router Configuration.png]]
Projekt zakłada stworzenie takiej konfiguracji sieci aby wszystkie pokoje miały dostęp do internetu.

Na obrazku mamy 100 komputerów z pokoju A, 50 z pokoju B, 25 z C i 25 z D łączące się po [[Hub|hubie]] - łączą się z [[Gateway Router]], mający w sobie [[IP table]], na [[Port|portach]] odpowiednio 1, 2, 3, 4 gdzie 4 jest dla Internetu.  

**Cel**:

![[IP Gateway and Router Configuration - Objective.png]]
1. Konfiguracja Routera
2. Dostaliśmy 256 [[IP adress|IP adresów]] (165.132.9.**0** ~ 165.132.9.**255**)

**Pokój A**
![[IP Gateway and Router Configuration - Room A.png]]

Mamy 100 pokoi, zatem dla każdego z nich po 1 IP. Oprócz tego musimy również przydzielić IP dla *network destination*, *broadcast IP* oraz *gateway interface*. - łącznie otrzymujemy 103 IP.
Oznacza to, że w danym subnecie potrzebuemy 103 adresów. Musimy okreslić wielkość [[Subnet mask|subnetu]]. Wiemy o tym, że operujemy na bitach, zatem wszystko będzie do potęgi liczby 2. Szukamy najmniejszego subnetu, który pomieści 103 adresów IP. 
