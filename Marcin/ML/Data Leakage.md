# Data Leakage
Data Leakage następuje wtedy kiedy w jakiś sposób informacja o zmiennej celu (`y`) przeniika do danych wejściowych (`x`) i ta informacja nie jest dostępna w momencie inferencji.

Najczęstsze powody:
1. Podział danych zależnych od czasu w sposób losowy (a nie zgodnie z czasem). 
   Przykład: Czyli mamy dane 7 dniowe:
   źle - losowo dni do treningu i losowo do testu.
   poprawnie - pierwsze 6 dni do treningu, 7-my dzień do testu.
   ![[Pasted image 20220930210137.png]]
2. 