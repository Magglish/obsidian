# IP routing table
![[IP routing table.png]]

(*Tabela została wzięta z projektu konfiguracji pokoju z [[IP Gateway and Router Configuration]]*)

IP routing table zawiera w sobie:
1. IP dla [[Network destination]]
2. [[Subnet mask]]
3. [[Gateway]]
4. [[Port]]
5. [[Metric]] 

Ostatnim rekordem jest Default Route - jak widać ma to taki sam gateway adres jak Internet. Dodatkowo jego subnet mask wynosi $0.0.0.0$, czyli wszystkie 32 bity są zerami, zatem wielkość subnetu wynosi $2^32$

**Działanie routing table:**
1. 