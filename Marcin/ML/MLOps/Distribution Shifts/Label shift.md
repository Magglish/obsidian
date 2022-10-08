# Label/target shift
$P(Y|X)$ - prawdopodobieństwo warunkowe wyjścia z modelu `Y` pod warunkiem otrzymania inputów `X`
$P(X)$ - rozkład wejść `X`
$P(Y)$ - rozkład wyjść `Y`

Label shift występuje wtedy gdy rozkład wyjścia $P(Y)$ się zmienia, ale $P(X|Y)$ pozostaje takie same.

Innymi słowy, rozkłady zmiennej `y` różnia się od siebie (np. między zbiorem treningowym a testowym), podczas gdy rozkłady zmiennej `x` mogą zostawać takie same. Np. mamy taki sam udział ludzi powyżej lat 50 w zbiorze testowym i treningowym, ale `y` znacznie się miedzy nimi różni.