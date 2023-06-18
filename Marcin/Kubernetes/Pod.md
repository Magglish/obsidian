# Pod


![[Kubernetes Pod.png]]

Podstawowa jednostka obliczeniowa/deploymentowa w [[Kubernetes|Kubernetesie]] - pojedynczy lub grupa [[Container|kontenerów]].

Cechy Poda:
1. Kontenery w podzie mogą mieć wspóldzielone zasoby (np. [[Persistent Volume]])
2. Kontenery w podzie mają ten sam IP co Pod. Więc odpytując poda odpytujemy konkretne kontenery, które wchodzą w jego skład - definiując port, definiujemy który kontener (na obrazku: ten po lewej port = 80, ten po prawej port = 2522)
3. Kontenery wewnątrz PODa mają ten sam IP więc mogą komunikać się po localhoście.   
#review