# Statefulset

Zarządzanie workloadem. Używany wtedy kiedy:

1. Chcemy te same [[IP adress]] i nazwy [[Pod|podów]]
2. Każdy z podów ma alokowany [[Persistent Volume Claim]]
3. Mamy mieć pewność, że wraz z restartem czy skalowaniem ten sam pod otrzyma te same PVC
4. Musisz zdefiniować [[Headless service]]

Use-casey: Statefulset używany w ramach np. deployowania baz danych:

1. Mamy [deployment Redisa](https://k21academy.com/docker-kubernetes/statefulset/) i chcemy mieć pewność że każdy z podów ma przyporządkowany PVC i w momencie restartu/scalowania do konkretnych podów są cały czas przyporządkowane te same PVC - żeby zachować dane
2. Mamy [deployment Postgresa](https://spacelift.io/blog/kubernetes-statefulset) i [pierwszy pod jest w trybie ReadWrite a pozostałe tylko replikują jego dane](https://stacksoft.io/blog/postgres-statefulset/).