# Networking in Kubernetes

Wewnątrz klastra [[Kubernetes|kubernetesowego]] mam swoją własną wewnętrzną sieć dzięki temu poszczególne kontenery w [[Pod]] mogą komunikować się z innym kontenerem w innym podzie po wewnętrznych IPkach - nie trzeba w tym celu używać [[NAT]]. [[DNS]]y również są automatycznie tworzone zg odnie z [pewną strukturą, którą można skonfigurować](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/).

Do zarządzania siecią w kubernetesie są stworzone odpowiednie serwisy/aplikacje/oprogramowanie jak np. np. [[Flannel]], [[Istio]] lub [[Anthos service mesh]] - wszystko zalezy od tego gdzie budujemy klaster.