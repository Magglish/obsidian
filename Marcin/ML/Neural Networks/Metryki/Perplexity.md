# Perplexity

Metryka Perplexity służy do ewaluacji modeli językowych

![[Perplexity wzór.png]]

Mając $t$ słów w danym tekście, który podaliśmy do sieci, jakie jest prawdopodobieństwo dla słowa $t+1$ (powtarzasz to dla każdego słowa w danym tekście). Następnie bierzesz te prawdopodobieństwa i odwracasz je i podnosisz do potęgi $1/T$ (średnia geometryczna).

Intuicja: Im większe są prawdopodobieństwa zwracane przez model (czyli model jest bardziej pewny) dla każdego $t+1$ tym perplexity jest mniejsze.

```python
(1/0.5 * 1/0.4 * 1/0.3 * 1/0.2 * 1/0.1)**(1/5)
```


Inna interpretacja

Perplexity = 0.53 oznacza, np. że 