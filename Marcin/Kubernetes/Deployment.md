# Deployment

Deployment to obiekt w [[Kubernetes|kubernetesowym]] klastrze, który definiuje specyfikacje zestawu podów ([[Replica Set]]) i klaster będzie dążył do tego stanu, poprzez [[Automated Scaling|automatyczne skalowanie]] i [[Self-Healing Applications|updateowanie i stawianie nowych podów gdy których z nich się wysypie]].

Deployment pozwala na:
1. Uruchomienie i zarządzanie [[Replica Set]], i potem czyszczenie ich gdy nie sa już potrzebne.
2. Rollbackować do poprzedniej wersji
3. Stosować odpowiednie techniki deploymenty (np. [[Rolling updates]], [[Canary Release]])