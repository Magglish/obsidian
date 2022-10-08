# Stateless vs statefull training
![[Stateless and statefull training.png]]

| Stateless | Statefull |
| ---- | --- |
| Uczymy model od zera na nowych danych | Douczamy model na kolejnych nowych danych |
| Może wymagać dużych mocy obliczeniowych | Może wymagać znacznie mniej mocy obliczeniowych |
| Wymaga przechowania wszystkich danych | Można mieć tylko ostatnie dane (może być przydatne gdy dane są specjalnie chronione przez jakies prawo) |
|Używamy przy nowych danych, nowych featerach, nowej architekturze|Używamy tylko przy nowych danych|

Jednakże w praktyce wykorzystywane jest podejście zarówno stateless jak i stateful. Gdy dane które są nowe są podobne do danych na których model się uczył, można użyć statefull, jednakże gdy coś się [[Distribution Shift|diametrycznie zmieni]], to możemy rozważyć nauczenie modelu na nowo od zera.
