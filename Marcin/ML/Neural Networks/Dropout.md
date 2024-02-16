# Dropout

Losowo ustaw neurony na 0 podczas uczenia.

Często używany jest prawdopodobieństwo = 50%, ale można go zmieniać w zależności od wielkości warstwy - im większa warstwa pod względem ilości neuronów, tym prawdopodobieństwo może być większe. 

Intuicja:

1. Mamy mniejszy model, więc mniejsza szansa na przeuczenie
2. Każdy neuron musi nauczyć się działać bez innych, czyli złapać bardziej "generalną wiedzę", a nie specyficzną.
3. Dropout uczy wiele różnych modeli (bo za każdym razem odrzucamy różne neurone), które sharują ze sobą wiedzę

**Bardzo ważne**
W trakcie inferencji/test time **wyłączamy dropout** i przepuszczamy dane normalnie przez całą sieć. Ale ten sam przypadek w trakcie treningu będzie inaczej oceniony niż podczas inferencji, zatem trzeba zescalować wartości aktywacji o prawdopodobieństwo:

![[Droput w trakcie inferencji.png]]

Alternatywa to *Inverted Dropout* żeby w trakcie treningu scalować wagi, a nie w trakcie predykcji - tak na przykład jest to zrobione w PyTorchu.

 