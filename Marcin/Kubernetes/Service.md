# Service

![[Kubernetes Service.png]]

Konfiguracja:
- ` metadata: name: Web service` - nazwa service'u
- `selector: app: Web` oznacza, że wszystkie pody, które mają label `app: Web`
- `port: 80` - port który service otwiera na zewnatrż
- `targetPort` - port który targetujemy na podzie