---
sr-due: 2022-11-02
sr-interval: 49
sr-ease: 218
---

# Kubernetes

![[Kubernetes.png]]

Kubernetes to [[Orchestration|jedne z narzędzi do orchestracji]] (zarządzania) kontenerami. 
Pozwala na łatwe budowanie, zarządzanie i automatyzację infrastruktury opartej o [[Container|kontenery]].
Kubernetes opiera się o kontenery, więc Kubernetes też można określić jako API do Dockera i zarządzania kontenerami.

Cechy Kubernetesa:
1. Kontenery w podzie mają ten sam IP, ale pody w klastrze mają unikalne IP w [[Subnet mask|swojej przestrzeni]].
2. Jeden kontener może kontaktować się z innym kontenerem na innym podzie bezpośrednio poprzez IP (nie potrzebne jest stosowanie tutaj [[NAT]])

#review