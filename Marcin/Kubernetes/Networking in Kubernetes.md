# Networking in Kubernetes

Wewnątrz klastra [[Kubernetes|kubernetesowego]] mam swoją własną wewnętrzną sieć dzięki temu poszczególne kontenery w [[Pod]] mogą komunikować się z innym kontenerem w innym podzie po wewnętrznych IPkach - nie trzeba w tym celu używać [[NAT]]. [[DNS]]y również są automatycznie tworzone zgodnie z [pewną strukturą, którą można skonfigurować](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/).

Do networkingu w kubernetesie 

[[DNS]] rozwiązywane są przez serwisy do zarządzania siecią (np. [[Flannel]], [[Istio]] lub [[Anthos service mesh]] - wszystko zalezy od tego gdzie budujemy klaster.)


Do zarządzania siecią wewnątrz klastra [[Kubernetes|kubernetesowe]] można użyć np. 
