# Service

![[Kubernetes Service.png]]

Service w [[Kubernetes]] to nic innego jak pewna logiczna abstrakcja dla grupy podów, które działają. Dostarcza ona dodatkowych funkcjonalności sieci

1. Jest jedno IP i jeden ten sam port dla servicu. 
   Odpytując te IP i ten port, odpytujesz pody. 
   Zaletą jest to, że jeżeli pody padną i zmienią swoje adresy, to service to ogarnia pod spodem. Jeżeli chcesz je zescalować to tak samo. 
   Cały czas odpytujesz ten sam IP i ten sam port, a pod spodem może dziać się "magia".

Konfiguracja:
- ` metadata: name: Web service` - nazwa service'u
- `selector: app: Web` oznacza, że wszystkie pody, które mają label `app: Web`
- `port: 80` - port który service otwiera na zewnatrż
- `targetPort` - port który targetujemy na podzie