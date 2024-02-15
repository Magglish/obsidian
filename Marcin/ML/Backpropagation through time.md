# Backpropagation through time

Algorytm [[Backpropagation|wstecznej propagacji błędów]] używany w sieciach [[RNN]]. Zakładamy, że przepuszczamy gradient przez wszystkie iteracje sieci RNN:

![[Backpropagation through time.png]]

Wady:

1. Jeśli byśmy używali go np. na całym tekście z Wikipedii, to wpuszczając całą treść wikipedii musielibyśmy potem przeliczyć gradient dla **wszystkich** iteracji, co jest nieefektywne obliczeniowo i pamięciowo. W praktyce używa się wersji [[Truncated backpropagation through time|trauncated]].