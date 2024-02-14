# Rekurencyjna Sieć Neuronowa

Pozwala na przetwarzanie sekwencyjne oraz na zapamiętaniu poprzednich stanów

![[RNN.png]]

Uczone są poprzez stosowanie [[Backpropagation through time]], ale w praktyce używana jest wersja [[Truncated backpropagation through time|truncated]].

Wady:
1. Problem z [[Problem Long-Term Dependencies]]
2. Problem z [[Exploding Gradients]] i [[Vanishing Gradient]], dlatego, że cały czas podczas wstecznej propagacji mnożymy gradienty odpowiednio przez macierze i w końcu przy wielu iteracjach sieci rekurencyjnej wartości będą bardzo maleć albo bardzo rosnąć.
   Na chłopski rozum, jeżeli wartość `2` mnożyłbyś cały czas przez np. `1.5` to w końću ta wartość urośnie do niebotycznych rozmiarów. Analogicznie jak `2` przez `0.5` - w końcu by to zmalało do zera.

Lepsze:

1. [[LSTM]]
2. [[GRU]]