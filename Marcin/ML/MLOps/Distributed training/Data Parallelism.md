# Data Parallelism
Data Parallelism to jedna z technik [[Distributed training]], w której parallelism polega na podziale danych na mniejsze części i każda z części idzie na oddzielną maszynę. Na każdej maszynie uczony jest ten sam model a następnie kumulowany są [[Gradient|gradienty]].

**Trudności:**
1. Jak efektywnie akumulować [[Gradient|gradienty]] z różnych maszyn.
2. 