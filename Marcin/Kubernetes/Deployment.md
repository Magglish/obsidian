# Deployment

Deployment to obiekt w [[Kubernetes|kubernetesowym]] klastrze.

Deployment pozwala na:
1. Uruchomienie i zarządzanie [[Replica Set]], i potem czyszczenie ich gdy nie sa już potrzebne.
2. Deklaracje nowego stanu [[Pod|podów]] w [[Replica Set]]
4. Rollbackować do poprzedniej wersji
5. Skalować
6. Stosować odpowiednie techniki deploymenty (np. [[Rolling updates]], [[Canary Release]])