# Data Leakage
Data Leakage następuje wtedy kiedy w jakiś sposób informacja o zmiennej celu (`y`) przeniika do danych wejściowych (`x`) i ta informacja nie jest dostępna w momencie inferencji.

#### Wykrywanie data leakage:
1. Sprawdzanie korelacji i mocy predyktorów względem zmiennej celu, czy nie ma jakichś podejrzanie mega silnych zmiennych

#### Najczęstsze powody:
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
   Część obserwacj może być silnie ze sobą powiązana pod względem labelek, a niestety w wyniku podziału znalazły się zarówno w uczącym jak i testowym zbiorze.
   Przykład: 2 osoby na tym samym wniosku kredytowym, zdjęcia zrobione temu samemu obiektowi w przeciągu krótkiego czasu.
   **Poprawnie:** zidentyfikować takie obserwacji i zapewnić że sa w tym samym splicie
5. **Leakage związany ze sposobem generowania danych**
   Przykład: zdjęcia generowane z jednego narzędzia mogą być pod jakimś względem inne niż z drugiego narzędzia, przez co model doucza się do danego typu narzędzia. 
   **Poprawnie:** trudne, ale może się uda to zidentyfikować. Można zmniejszyć to ryzyko np. majac więcej danych z różnych urządzeń, czy też operacje feature engineeringowe wykonywać na wszystkich danych w splicie treningowym, a nie oddzielnie per maszyna, wtedy efekt innej maszyny zostanie troche zniwelowany.