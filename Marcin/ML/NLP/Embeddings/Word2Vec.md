# Word2Vec

Word2Vec to sposób na stworzenie reprezentacji numerycznej słów.

Idea:

1. Mamy duży korpus tekstu
2. Każde słowo jest reprezentowane jako wektor
3. Przejść przez każdą w tekście $t$, która ma słowo centralnego $c$ oraz context wokół tego słowa $o$

$$ \text{... government debt problems turning into } \underline{banking} \text{ crises as happened in 2009 ...} $$

$$ \text{... saying that Europe needs unified } \underline{banking} \text{ regulation to replace the hodgepodge ...} $$

$$ \text{... India has just given its } \underline{banking} \text{ system a shot in the arm ...} $$

4. Użyj podobieństwa wektorów dla słowa centralnego $c$ oraz jego contextu $o$ aby **wyliczyć prawdopodobieństwo wystąpienia kontekstu $o$ pod warunkiem występowania słowa centralnego $c$ lub vice-versa**
5. Tak zmieniaj wartości wektorów dla słów aby **zmaksymalizować te prawdopodobieństwo**