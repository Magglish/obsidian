# Feature Generalization
Feature Generalization oznacza potencjał danej zmiennej do wykorzystania jej do danych, których jeszcze nie widzieliśmy. 

## Zmienne słabo generalizujące
1. IDki rekordów (ale IDki np. grup czy userów już tak)

#### Aspekty do wzięcia pod uwagę w ocenie feature generalization:
1. **Coverage** - czyli procent obserwacji, które ma wartości w tej zmiennej w stosunku do całości i w stosunku do labelek.
   1) Przykład: tylko 1% obserwacji ma jakąś wartość - do wyrzucenia
   2) Przykład: tylko 1% obserwacji ma jakąś wartość ALE spośród nich 99% ma konkretną labelke - wartościowa zmienna
      Jeśli natomiast coverage jest różny w dwóch zbiorach (train i test) to oznacza, że dane mogą nie pochodzić z tego samego rozkładu (trzeba sprawdzić jak zostały dane podzielone) i dodatkowo powstaje ryzyko [[Data Leakage|data leakage]]
2. **Rozkład** - należy rzucić okiem na rozkłady zmiennych uczących i testowych. Np. jeżeli dana zmienna czasowa ma w sobie od poniedziałku do soboty, a w testowym jest niedziela, to jest to mega słabe. Należy zastanowić się nad lepszą obsługą tej zmiennej.