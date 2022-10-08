# Label/target shift
$P(Y|X)$ - prawdopodobieństwo warunkowe wyjścia z modelu `Y` pod warunkiem otrzymania inputów `X`
$P(X)$ - rozkład wejść `X`
$P(Y)$ - rozkład wyjść `Y`

Label shift występuje wtedy gdy rozkład wyjścia $P(Y)$ się zmienia, ale $P(X|Y)$ pozostaje takie same.

Innymi słowy, rozkłady zmiennej `y` różnia się od siebie (np. między zbiorem treningowym a testowym) 