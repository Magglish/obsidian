# Deployment

![[Kubernetes Deployment.png]]

Deployment to obiekt w [[Kubernetes|kubernetesowym]] klastrze, który definiuje specyfikacje zestawu podów ([[Replica Set]]) i klaster będzie dążył do tego stanu, poprzez [[Automated Scaling|automatyczne skalowanie]] i [[Self-Healing Applications|updateowanie i stawianie nowych podów gdy których z nich się wysypie]].

Deployment pozwala na:
1. Uruchomienie i zarządzanie [[Replica Set]], i potem czyszczenie ich gdy nie sa już potrzebne.
2. Rollbackować do poprzedniej wersji
3. Stosować odpowiednie techniki deploymenty (np. [[Rolling updates]], [[Canary Release]])

Przykładowa konfiguracja pokazana u góry:
- `metadata: name: example-deployment` - nasz deployment ma nazwe `example-deployment`
- `metadata: labels: app: nginx` -  nadajemy labelke `app: nginx`
- `replicas: 2` - chcemy 2 pody
- `selector: matchLabels: app: nginx` - deployment dotyczy podów z labelkami `app: nginx` 
- `spec: containers: name` - nazwa kontnera
- `spec: containers: image` - ścieżka do obrazu kontenera
- `spec: containers: ports: containerPorts` - który port otwieramy na kontenerze (tutaj akurat 80 na http bo domyślnie nginx słucha na porcie 80)

#review 