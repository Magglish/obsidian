# Statefulset

Zarządzanie workloadem. Używany wtedy kiedy:

1. Chcemy te same [[IP adress]] i nazwy [[Pod|podów]]
2. Każdy z podów ma alokowany [[Persistent Volume Claim]]
3. Mamy mieć pewność, że wraz z restartem czy skalowaniem ten sam pod otrzyma te same PVC

Statefulset używany w ramach np. deployowania baz danych  