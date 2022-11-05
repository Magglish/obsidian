# Networking in Kubernetes

Wewnątrz klastra [[Kubernetes|kubernetesowego]] mam swoją własną wewnętrzną sieć dzięki temu poszczególne kontenery w [[Pod]] mogą komunikować się z innym kontenerem w innym podzie po wewnętrznych IPkach - nie trzeba w tym celu używać [[NAT]]. 

[[DNS]] rozwiązywane są przez [[]]


Do zarządzania siecią wewnątrz klastra [[Kubernetes|kubernetesowe]] można użyć np. [[Flannel]], [[Istio]] lub [[Anthos service mesh]] - wszystko zalezy od tego gdzie budujemy klaster.

