# Quality of Service

Quality of Service (QoS) to zestaw klas, które można przyporządkować []
Kiedy k8s ubija pody jeśli brakuje mu pamięci na maszynce według kolejności:

1. Najpierw best effort - pody nie majace resources ustawione

2. Potem Burstable - pody majace ustawione limity i request ale roznia sie od siebie

3. Na końcu Gruanated - gdy limity i requesty są takie same