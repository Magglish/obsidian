# Word2Vec

Word2Vec to sposób na stworzenie reprezentacji numerycznej słów.
[Paper](https://arxiv.org/pdf/1301.3781.pdf)

Algorytmy:
1. [[Continuous Bag of Words]]
2. [[SkipGram]]


Idea:

1. Mamy duży korpus, zbiór tekstu
2. Każde słowo jest reprezentowane jako wektor
3. Przejść przez każdą pozycję w tekście $t$, i dla każdej pozycji $t$ mamy słowo centralne $c$ oraz kontekst wokół tego słowa $o$
4. Użyj podobieństwa wektorów dla słowa centralnego $c$ oraz jego contextu $o$ aby **wyliczyć prawdopodobieństwo wystąpienia kontekstu $o$ pod warunkiem występowania słowa centralnego $c$ lub vice-versa**

![[Word2Vec central word and context.png]]

5. Tak zmieniaj wartości wektorów dla słów aby **zmaksymalizować te prawdopodobieństwo**
6. Często jest tak, że finalna reprezentacja słowa to średnia z dwóch wektorów: wektora danego słowa jako centralne słowo i wektora jako kontekst.

![[Word2Vec objective function.png]]

![[Word2Vec objective function 2.png]]

![[Word2Vec prediction function.png]]


7. Wektory $v$ oraz $u$ dla każdego słowa są losowo zainicjowane. W wyniku optymalizacji gradientowe te wartości są zmieniane tak żeby minimalizowac objective function.

![[Word2Vec learning.png]]