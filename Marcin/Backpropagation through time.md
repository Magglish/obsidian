# Backpropagation through time

Algorytm [[Backpropagation|wstecznej propagacji błędów]] używany w sieciach [[RNN]]. Zakładamy, że przepuszczamy gradient przez wszystkie iteracje sieci RNN:

![[Backpropagation through time.png]]

Wady:

1. Jeśli byśmy używali go np. na całym tekście z Wikipedii, to