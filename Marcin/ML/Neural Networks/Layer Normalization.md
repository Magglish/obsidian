# Layer Norm

![[Layer Norm Example.png]]

Inna normalizacja, która normalizuje po featuerach, a nie po przypadkach jak w [[Batch Normalization]].

Zalety:

1. Nie zależy od wielkości batcha - można użyć jej w modelach sekwencyjnych, w k tórych długość inputów się różni
2. Nie trzeba "przełączać" jej w trakcie inferencji, tak jak jest to w [[Batch Normalization]]
