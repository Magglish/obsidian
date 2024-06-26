# Kubernetes

![[Kubernetes.png]]

Kubernetes ([[Kubernetes mapa|mapa]]) to [[Orchestration|jedne z narzędzi do orchestracji]] (zarządzania) kontenerami. Pozwala na łatwe budowanie, zarządzanie i automatyzację infrastruktury opartej o [[Container|kontenery]]. Zbudowany na bazie [Borg](https://en.wikipedia.org/wiki/Borg_(cluster_manager), który działał właśnie w celu orchestryzacji kontenerów.
Kubernetes opiera się o kontenery, więc Kubernetes też można określić jako API do Dockera i zarządzania kontenerami.

Kubernetes dostarcza wielu rozwiązań po prostu out-of-the-box:
1. Sieciowe:
	1. Kontenery w podzie mają ten sam IP, ale pody w klastrze mają unikalne IP w [[Subnet mask|swojej przestrzeni]].
	2. Jeden kontener może kontaktować się z innym kontenerem na innym podzie bezpośrednio poprzez IP (nie potrzebne jest stosowanie tutaj [[NAT]])
2. [[Automated Scaling|Automatyczne scalowanie]]
3. [[Self-Healing Applications|Self-healing]]

Wady:
1. Wymaga wiedzy i doświadczenia w zdeployowaniu i zarząðzaniu (można ułatwić to sobie deployując na chmurze i wtedy zarządzanie w pewnym stopniu zostawiamy dostarczycielowi chmury)
2. Może być drogi, ponieważ podstawowe działania k8s wymagają pewnych zasobów

