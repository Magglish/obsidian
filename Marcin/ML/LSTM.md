# Long-Short Term Memory

[[RNN|Sieć rekurencyjna]], której celem jest zapamiętanie długich zależności, aby rozwiązać problem [[Problem Long-Term Dependencies|long-term dependency]]. 

LSTM ma znacznie mniejsze pr z [[Vanishing Gradient]] i [[Exploding Gradients]], dlatego, że algorytm wstecznej propagacji działa inaczej -> przechodzi przez forget gate, która ma różne wartości, przez które jest przemanżany gradient (raz większą od 1, raz mniejszą od 1), a nie cały czas mniejszą od 1 / cały czas większą od 1, co w efekcie w końcu prowadzi gradient do 0 / do nieskończoności

## Architektura

![[LSTM 2.png]]


![[LSTM.png]]


## Główna idea

![[LSTM main idea.png]]

Główna idea LSTM polega na tym, że stan komórki (*cell state*) jest odpowiednio modyfikowany w oparciu o 3 gate'y. Te gate albo:

1. określają czy informacja ma przejść przez komórke czy też nie (bramka sigmoidalna/bramka input) 

![[LSTM sigmoid gate.png]]


2. dodają albo odejmują informację do/od *stanu komórki* (bramka tangensu-hiperbolicznego/bramka update), albo nawet 

![[LSTM tangenshiperboliczny gate.png]]

Na końcu sumarycznie te dwie operacje się skłądają (bramka output)

![[LSTM zlozenie operacji.png]]

Opróćz tego wychodzi też stan ukryty z informacjami do tej pory

![[LSTM wartstwa ukryta.png]]