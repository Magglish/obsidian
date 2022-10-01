# Model Parallelism
Model Parallelism to jedna z technik [[Distributed training]], w której parallelism polega na podziale algorytmu na różne maszyny (np. 2 pierwsze warstwy uczą się na 1-wszej maszynie, kolejne 2 warstwy na 2-giej maszynie itd.)

![[Model Parallelism.png]]

**Trudności:**
1. Jeżeli dana warstwa X potrzebuje 