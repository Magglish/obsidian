# Long-Short Term Memory

[[RNN|Sieć rekurencyjna]], której celem jest zapamiętanie długich zależności, aby rozwiązać problem [[Problem Long-Term Dependencies|long-term dependency]].

![[LSTM.png]]


![[LSTM main idea.png]]

Główna idea LSTM polega na tym, że stan komórki (*cell state*) jest odpowiednio modyfikowany w oparciu o 3 gate'y. Te gate albo dodają albo usuwają informację do *stanu komórki* (bramka tangensu-hiperbolicznego, albo nawet określają czy informacja ma przejść przez komórke czy też nie (bramka sigmoidalna)

