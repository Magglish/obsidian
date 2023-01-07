# Quality of Service

Quality of Service (QoS) to zestaw klas, które można przyporządkować [[Pod|Podom]] i określić kolejność ich usuwania w sytuacji gdy na maszynce brakuje zasobów i trzeba podjąc decyzję, które Pody mogą zostać a które nie. Zabijanie podów odbywa się według kolejności:

1. Najpierw *BestEffort* - pody nie majace resources ustawione
2. Potem *Burstable* - pody majace ustawione limity i request ale roznia sie od siebie
3. Na końcu *Guaranted* - gdy limity i requesty są takie same