---
sr-due: 2022-11-29
sr-interval: 60
sr-ease: 235
---

# Pod


![[Kubernetes Pod.png]]

Podstawowa jednostka deploymentu w [[Kubernetes|Kubernetesie]] - pojedynczy lub grupa [[Container|kontenerów]].

Cechy Poda:
1. Może mieć swój współdzielone zasoby (*shared volume*)
2. Kontenery w podzie mają ten sam IP co Pod. Więc odpytując poda odpytujemy konkretne kontenery, które wchodzą w jego skład - definiując port, definiujemy który kontener
3. Kontenery wewnątrz PODa mają ten sam IP więc mogą komunikać się po localhoście.   
#review