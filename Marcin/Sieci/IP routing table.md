# IP routing table
![[IP routing table.png]]

(*Tabela została wzięta z projektu konfiguracji pokoju z [[IP Gateway and Router Configuration]]*)

IP routing table zawiera w sobie:
1. IP dla [[Network destination]]
2. [[Subnet mask]]
3. [[Gateway]]
4. [[Port]]
5. [[Metric]] 

Ostatnim rekordem jest Default Route - jak widać ma to taki sam gateway adres jak Internet. Dodatkowo jego subnet mask wynosi $0.0.0.0$, czyli wszystkie 32 bity są zerami, zatem jest to największy możliwy subnet. Dlatego jest określany jako *all pass subnet mask*, bo zawiera w sobie "wszystkie IP".  (**Tutaj przydałoby się znaleźc jeszcze leszcze gdzieś wytłumaczenie bo tutaj było dla mnie za mało.**). W zwiazku z tym, że Default Route ma taki sam gateway jak Internet, to możemy to skonkatenować otrzymując finalną wersję tabeli:
![[IP routing table final.png]]


**Działanie routing table:**
1. Otrzymujemy jakąs informację do konkretnego IP. 