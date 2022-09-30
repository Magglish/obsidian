# Feature Generalization
Feature Generalization oznacza potencjał danej zmiennej do wykorzystania jej do danych, których jeszcze nie widzieliśmy. 

**Zmienne słabo generalizujące:**
1. IDki rekordów (ale IDki np. grup czy userów już tak)

**Aspekty do wzięcia pod uwagę w ocenie feature generalization:**
1. Coverage - czyli procent obserwacji, które ma wartości w tej zmiennej w stosunku do całości i w stosunku do labelek.
   1) Przykład: tylko 1% obserwacji ma jakąś wartość - do wyrzucenia
   2) Przykład: tylko 1% obserwacji ma jakąś wartość ALE spośród nich 99% ma konkretną labelke - wartościowa zmienna
      Jeśli natomiast coverage jest różny w dwóch
2. Rozkład