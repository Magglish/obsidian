# Beam Search Decoding

Metoda używana w modelach [[Sequence2Sequence Models]] podczas generowania predykcji, która polega na trzymaniu "w pamięci" $k$ najbardziej prawdopodobnych częściowych translacji.

Przeważnie $k$ w zakresie od 5 do 10

![[Beam Search Decoding idea.png]]

![[Beam Search Decoding example 1.png]]

![[Beam Search Decoding example 2.png]]

![[Beam Search Decoding example 3.png]]

![[Beam Search Decoding example 4.png]]

![[Beam Search Decoding example 5.png]]

![[Beam Search Decoding example 6.png]]

Kryterium stopu w Beam Search:

![[Beam Search Decoding stopping criterion.png]]

![[Beam Search Decoding fixing problems.png]]
