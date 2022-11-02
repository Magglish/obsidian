---
sr-due: 2022-11-29
sr-interval: 60
sr-ease: 235
---

# Pod

![[Kubernetes Pod.png]]

Podstawowa jednostka deploymentu w [[Kubernetes|Kubernetesie]] - pojedynczy lub grupa [[Container|kontenerów]].
Kontenery w podzie mają ten sam IP, ale pody w kontenerze mają unikalne IP w [[Subnet mask|swojej przestrzeni]].

Dodatkowo jeden kontener może kontaktować się z innym kontenerem na innym podzie bezpośrednio poprzez IP (nie potrzebne jest stosowanie tutaj [[NAT]])

Cechy Poda:
1. Może mieć swój współdzielone zasoby (*shared volume*)
#review