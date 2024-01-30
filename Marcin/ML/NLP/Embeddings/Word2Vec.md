# Word2Vec

Word2Vec to sposób na stworzenie reprezentacji numerycznej słów.

Idea:

1. Mamy duży korpus tekstu
2. Każde słowo jest reprezentowane jako wektor
3. Przejść przez każdą w tekście $t$, która ma słowo centralnce $c$ oraz context wokół tego słowa $o$

$$ \text{... government debt problems turning into} \textbf{banking} crises as happened in 2009 ...} $$