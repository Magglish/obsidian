# Service

![[Kubernetes Service.png]]

Service w [[Kubernetes]] to nic innego jak pewna logiczna abstrakcja dla grupy podów, które działają. Dostarcza ona dodatkowych funkcjonalności:

1. Jest jedno IP i jeden ten sam port dla servicu. Odpytując te IP i ten port, odpytujesz pody. 
   Zaletą jes to

Konfiguracja:
- ` metadata: name: Web service` - nazwa service'u
- `selector: app: Web` oznacza, że wszystkie pody, które mają label `app: Web`
- `port: 80` - port który service otwiera na zewnatrż
- `targetPort` - port który targetujemy na podzie