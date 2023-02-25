---
sr-due: 2023-03-12
sr-interval: 15
sr-ease: 206
---

# Rolling Deployment

![[Rolling Deployment.png]]

Rolling update polega na powolnym udpateowaniu tak aby żadna z aplikacj nie była wyłączona.

W sytuacji gdy mamy tylko 1 [[Container|instancje]], dokładana jest 2-ga z nową wersją i potem ubijana 1-wsza stara.
W sytuacji gdy mamy n instancji, to ubijana jest 1 instancja i w jej miejsce pojawia się nowa zupdateowana i tak pojedynczo jest robione.
#review 