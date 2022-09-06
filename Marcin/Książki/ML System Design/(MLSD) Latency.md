# (MLSD) Latency
![[Processing query at a time.png]]
1. Podczas researchu zależy Ci najbardziej na *throughput* (przepustowość) czyli na tym ile obserwacji obserwacji jesteś w stanie przetworzyć na raz (w jakiejś jednostce czasu) - im więcej, tym lepiej bo przeprowadzisz więcej eksperymentów. Jednakże w produktyzacji modeli najważniejsze jest *latency* czyli opóźnienie w przetworzeniu pojedynczej obserwacji.
2. Jeśli twój system przetwarza maksymalnie jedną obserwacje w czasie, wtedy wyższe *latency* oznacza niższe *throughput*. 
   Średnie latency 10 ms = przepustowość 100 na sekundę. 
   Średnie latency 100 ms = przepustowość 10 na sekundę.
3. Latency należy traktować jako rozkład, a nie pojedyncza wartość. Istotne jest by mierzyć medianę oraz skrajne percentyle, by móc wyłapać outliersy. 
4. Outliersy w latency mogą dużo powiedzieć - mogą to być Ci najwazniejsi użytkownicy. (Przykład Amazona pokazuje, że najwolniejszy użytkownicy to Ci którzy mają najwięcej danych, ponieważ wykonują wiele zakupów - stąd większe opóźnienie wynikające z większej ilości danych do przetworzenia)