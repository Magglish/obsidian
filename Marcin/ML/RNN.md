# Rekurencyjna Sieć Neuronowa

Pozwala na przetwarzanie sekwencyjne oraz na zapamiętaniu poprzednich stanów

![[RNN.png]]

Uczone są poprzez stosowanie [[Backpropagation through time]], ale w praktyce używana jest wersja [[Truncated backpropagation through time|truncated]].

Wady:
1. Problem z [[Problem Long-Term Dependencies]]
2. Problem z [[Exploding Gradients]] i [[Vanishing Gradient]], dlatego, że cały czas podczas wstecznej propagacji mnożymy gradienty odpowiednio przez macierze i w końcu przy wielu warstwa

Lepsze:

1. [[LSTM]]
2. [[GRU]]