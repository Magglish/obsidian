# Perplexity

Metryka Perplexity służy do ewaluacji modeli językowych

![[Perplexity wzór.png]]

Mając $t$ słów w danym tekście, który podaliśmy do sieci, jakie jest prawdopodobieństwo dla słowa $t+1$ (powtarzasz to dla każdego słowa w danym tekście). Następnie bierzesz te prawdopodobieństwa i odwracasz je i podnosisz do potęgi $1/T$ (średnia geometryczna).

Intuicja: Im większe są prawdopodobieństwa zwracane przez model (czyli model jest bardziej pewny) dla każdego $t+1$ tym perplexity jest mniejsze.

Przykład: dla zdania o 5 słowach
1. Różne prawdopodobieństwa = od 0.5 do 0.1 -> perplexity = 3.83
2. Wysokie prawdopodobieństwa = 0.9 -> perplexity = 1.11
3. Niskie prawdopodobieństwa = 0.1 -> perplexity = 10

Inna interpretacja:

Perplexity = 0.53 oznacza, np. że 