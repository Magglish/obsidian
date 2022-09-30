# Data Leakage
Data Leakage następuje wtedy kiedy w jakiś sposób informacja o zmiennej celu (`y`) przeniika do danych wejściowych (`x`) i ta informacja nie jest dostępna w momencie inferencji.

Najczęstsze powody:
1. **Podział danych zależnych od czasu w sposób losowy (a nie zgodnie z czasem).** 
   **Poprawnie** - pierwsze 6 dni do treningu, 7-my dzień do testu.
   ![[Train Valid Test split by time.png]]
2. **Używanie feature transformation na całych danych**
   Przykład: skalowanie featerów, imputacja braków danych itd. korzystając z całego zbioru.
   **Poprawnie**: podziel najpierw zbiory na uczacy, walidacyjny i testowy i dopiero wtedy rób transformacje.
3. **Brak deduplikacji danych**
   Mając zduplikowane dane w zbiorze, może istniec ryzyko, że część obserwacji identycznych wylosuje się do zbioru treningowego, częśc do zbioru testowego a to wciąż będą te same dane.
   **Poprawnie**: wykonaj deduplikacje
4. **Group leakage**
   