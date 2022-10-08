# Covariate shift
$P(Y|X)$ - prawdopodobieństwo warunkowe wyjścia z modelu `Y` pod warunkiem otrzymania inputów `X`
$P(X)$ - rozkład wejść `X`
$P(Y)$ - rozkład wyjść `Y`

Covariate shift występuje wtedy gdy rozkład inputów $P(X)$ się zmienia, ale $P(Y|X)$ pozostaje takie same.

Innymi słowy, covariate shift występuje wtedy kiedy mamy różnice w rozkładach zmiennych wtedy gdy uczyliśmy model vs. wtedy gdy model działa na produkcji. Przeważnie covariate shift ciągni

**Powody:**
1. Selection biases kiedy budowany jest zbiór uczący
2. Modyfikowanie zbioru gdy mamy problem z niezbalansowanymi klasami
3. [[Active learning]] i wybór próbek najlepszych może zbiasować zbiór
4. Duże zmiany w środowisku w którym ma działać model