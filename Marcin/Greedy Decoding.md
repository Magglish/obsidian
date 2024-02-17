# Greedy Decoding

Metoda używana w modelach [[Sequence2Sequence Models]] podczas generowania predykcji, która polega na zastosowaniu $argmax$ i zwróceniu tego słowa, dla którego prawdopodobieństwo jest najwyższe.

Wady:
1. Wyniki są zawsze takie same, a co jeżeli się pomylimy i chcielibyśmy to "naprawić"? Alternatywa -> [[Exhaustive Search Decoding]]

Generuje dopóki nie trafi na specjalny token np. `<EOS>` albo `<END>`