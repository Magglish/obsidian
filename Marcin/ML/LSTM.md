# Long-Short Term Memory

[[RNN|Sieć rekurencyjna]], której celem jest zapamiętanie długich zależności, aby rozwiązać problem [[Problem Long-Term Dependencies|long-term dependency]].

## Architektura

![[LSTM.png]]

## Główna idea

![[LSTM main idea.png]]

Główna idea LSTM polega na tym, że stan komórki (*cell state*) jest odpowiednio modyfikowany w oparciu o 3 gate'y. Te gate albo:

określają czy informacja ma przejść przez komórke czy też nie (bramka sigmoidalna) 

![[Pasted image 20240214111646.png]]


albo dodają albo usuwają informację do *stanu komórki* (bramka tangensu-hiperbolicznego, albo nawet 

![[Pasted image 20240214111704.png]]

sumarycznie te dwie operacje się skłądają

![[Pasted image 20240214111720.png]]

Opróćz tego wychodzi też stan ukryty z informacją 