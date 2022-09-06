# (MLSD) Latency
![[Processing query at a time.png]]
1. Podczas researchu zależy Ci najbardziej na *throughput* (przepustowość) czyli na tym ile obserwacji obserwacji jesteś w stanie przetworzyć na raz (w jakiejś jednostce czasu) - im więcej, tym lepiej bo przeprowadzisz więcej eksperymentów. Jednakże w produktyzacji modeli najważniejsze jest *latency* czyli opóźnienie w przetworzeniu pojedynczej obserwacji.
2. Jeśli twój system przetwarza maksymalnie jedną obserwacje w czasie, wtedy wyższe *latency* oznacza niższe *throughput*. 
   Średnie latency 10 ms = przepustowość 100 na sekundę. 
   Średnie latency 100 ms = przepustowość 10 na sekundę.
   

2. If your system always processes one query at a time, higher latency means lower
throughput. If the average latency is 10 ms, which means it takes 10 ms to process
a query, the throughput is 100 queries/second. If the average latency is 100 ms, the
throughput is 10 queries/second.
However, because most modern distributed systems batch queries to process them
together, often concurrently, higher latency might also mean higher throughput.
3. When thinking about latency, it’s important to keep in mind that latency is not an
individual number but a distribution. It’s usually better to think in percentiles, as they tell you something about a certain percentage of your requests (best is median). Higher percentiles also help you discover outliers, which might be symptoms of something wrong.
4. Higher percentiles are important to look at because even though they account for
a small percentage of your users, sometimes they can be the most important users.
For example, on the Amazon website, the customers with the slowest requests are
often those who have the most data on their accounts because they have made many
purchases—that is, they’re the most valuable customers.