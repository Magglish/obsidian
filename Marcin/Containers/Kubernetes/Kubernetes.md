# Kubernetes

Kubernetes to [[Orchestration|jedne z narzędzi do orchestracji]] (zarządzania) kontenerami.

Pozwala na łatwe budowanie, zarządzanie i automatyzację infrastruktury opartej o [[Container|kontenery]].

**Komponenty Kubernetesa:**

Kubernetes master - odpwiedzialny za zarządzanie klastrami
1. kube-apiserver - eksponuje API 
2. etcd - key store i buckup store dla wszystkich istotnych danych do prawidłowej pracy klastra
3. kube-scheduler - zarządza deployem podów (w zależności od dostępnych zasobów)
4. kube-controller manager - zarządza nodeami, replicami, endpointami, service accountami i tokenami
5. cloud-controller manager - 

Kubernetes worker (Node):
1. kubelet - agent do zarządzania nodem i komunikowania z masterem
2. kube-proxy - zarządza siecią i przychodzącymi/wychodzącymi żądaniami
3. Container Runtime - środowisko do uruchamiania kontenerów (np. [[Docker]])

**Software bazujący na kubernetesie:**
1. [[Amazon Elastic Container Service]]
2. [[Amazon ECS for Kubernetes]]
3. [[Azure Kubernetes Service]]
4. [[Google Kubernetes Engine]]
