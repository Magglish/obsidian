# Docker Swarm
Docker Swarm jest jednym z narzedzi do [[Orchestration|orchestracji]]. Pozwala na stworzenie klastra z kilku komputerów/serwerów. 

Cechy docker swarma:
1. Stworzony klaster jest kompatybilny z Docker CLI (używasz tych samych komend jakbys pracował na jednym obrazie)
2. Pozwala na skalowanie
3. Declarative service model?? potrzebne lpeze zrodlo
4. Decentrailized design?? potrzebne lepszezrodlo
5. Zapewnia monitoring kontenerów
6. Zarządza siecią dla kontenerów - kazdy kontener dostaje swoje IP i nazwe DNS.
7. Można przekierować porty do [[Load Balancing|load balancera]] lub wewnatrz docker swarma skonfigurować jak powinien dystrybuować pracę między kontenerami. 
8. Jest bezpieczny - operuje na [[TLS]] i [[Encryption|enkrypcji]]
9. Pozwala na [[Rolling updates|rolling updates]] 
