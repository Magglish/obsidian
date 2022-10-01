# Data Parallelism
Data Parallelism to jedna z technik [[Distributed training]], w której parallelism polega na podziale danych na mniejsze części i każda z części idzie na oddzielną maszynę. Na każdej maszynie uczony jest ten sam model a następnie kumulowany są [[Gradient|gradienty]].

**Trudności:**
1. Jak efektywnie akumulować [[Gradient|gradienty]] z różnych maszyn. Stosując prosty [[Stochastic Gradient Descent|SGD]] system musi poczekać aż wszystkie maszyny skończą pracę - w tym celu można stosować [[Asynchronous Stochastic Gradient Descent|SGD]] w wersji asynchronicznej.
2. Jaki efektywnie ustawić batch size, ponieważ za duży batch size może oznaczać, że będziemy mieli problemy z uczeniem i z ustawieniem odpowiedniego learning rate.
3. Czasami główna maszynka, która zbiera gradienty i wykonuje update, może wymagać sporych zasobów (ponieważ i uczy model i updateuje wagi ze wszystkich maszyn), dlatego warto aby na masterze ustawić mniejszy batch size, a na innych workerach (które tylko uczą) większy batch size.
