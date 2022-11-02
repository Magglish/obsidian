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

**Komponenty Kubernetesa:**

1. [[Master]] - odpwiedzialny za zarządzanie klastrami
1. [[API Server]] - eksponuje API 
2. [[Etcd]] - key store i buckup store dla wszystkich istotnych danych do prawidłowej pracy klastra
3. [[Scheduler]] - zarządza deployem podów (w zależności od dostępnych zasobów)
4. [[Controller manager]] - zarządza nodeami, replicami, endpointami, service accountami i tokenami
5. [[Controller Manager]] - pozwala dostawcom usług wbić się do kubernetesa i zarządzać nim 


#review