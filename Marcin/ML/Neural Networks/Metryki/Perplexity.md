# Perplexity

Metryka Perplexity służy do ewaluacji modeli językowych

![[Perplexity wzór.png]]

Mając $t$ słów w danym tekście, który podaliśmy do sieci, jakie jest prawdopodobieństwo dla słowa $t+1$ (powtarzasz to dla każdego słowa w danym tekście). Następnie bierzesz te prawdopodobieństwa i odwracasz je i podnosisz do potęgi $1/T$ (średnia geometryczna)

Interpretacja:

Perplexity = 0.53 oznacza, np. że 