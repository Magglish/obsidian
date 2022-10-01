# Data Parallelism
Data Parallelism to jedna z technik [[Distributed training]], w której parallelism polega na podziale danych na mniejsze części i każda z części idzie na oddzielną maszynę. Na każdej maszynie uczony jest ten sam model a następnie kumulowany są [[Gradient|gradienty]].

**Trudności:**
1. Jak efektywnie akumulować [[Gradient|gradienty]] z różnych maszyn. Stosując prosty [[Stochastic Gradient Descent|SGD]] system musi poczekać aż wszystkie maszyny skończą pracę - w tym celu można stosować [[Asynchronous Stochastic Gradient Descent|SGD]] w wersji asynchronicznej.
2. Jaki efektywnie ustawić batch size, ponieważ za duży batch size może oznaczać, że będziemy mieli problemy z uczeniem i z ustawieniem odpowiedniego learning rate.
3. 