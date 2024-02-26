# Rekurencyjna Sieć Neuronowa

Pozwala na przetwarzanie sekwencyjne oraz na zapamiętaniu poprzednich stanów

![[RNN.png]]

Uczone są poprzez stosowanie [[Backpropagation through time]], ale w praktyce używana jest wersja [[Truncated backpropagation through time|truncated]].

Wady:
1. Problem z [[Problem Long-Term Dependencies]]
2. Problem z [[Exploding Gradients]] i [[Vanishing Gradient]]
3. Są "od lewej do prawej", ale można zastosować [[Bidirectional RNN]]
4. Koszt obliczeniowy dla pary słów bardzo od siebie oddalonych

![[Long Distance Dependency w RNN.png]]

5. Brak paralelizacji obliczeń, bo są sekwencyjne

Lepsze:

1. [[LSTM]]
2. [[GRU]]