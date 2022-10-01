# Pipeline Parallelism
Pipeline Parallelism to jedna z technik [[Distributed training]], w której parallelism polega na tym aby pewne operacje w pipeline wykonywane były jednocześnie.

![[Pipeline Parallelism.png]]

Przykład:
1. Mamy 4 maszyny i na 1-wszej maszynie jest 1-wsza warstwa sieci, na 2-giej 2-ga itd. itd.
2. Dzielimy batch na jeszcze 4 mikro batche.
3. Maszyna 1-wsza wylicza 1-wszą warstwe na 1-wszy micro batchu.
4. Następnie maszyna 2-ga wylicza 2-ga warstwę na outputach z 1-wszej warstwy i jednocześnie maszyna 1-wsza wylicza 1-wsza warstwę na 2-gim micro batchu.
5. Itd. itp.