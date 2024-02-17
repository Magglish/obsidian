# Multilayer RNN

Multilayer [[RNN]], czyli aplikowanie sieci RNN wielokrotnie. Inaczej nazywane Stacked RNN.

Pierwsze RNNy uczą się mniej poziomowych zależności (wiedza o konkretnych słowach, literach), a dalsze RNNy uczą się bardziej wysokopoziomowych zależności (wiedza o znaczeniu, wiedza o kilku słowach na raz).

Ważne:

1. Multilayer RNN lepszy niż pojedynczy RNN
2. W tłumaczeniu maszynowym w modelach [[Sequence2Sequence Models]]: Encoder lepiej żeby miał 2 warstwy, a Decoder 4 warstwy.
3. Dla większych sieci multilayer RNN musimy zastosować podejście z [[Dense Networks]] (dense connection) lub z [[Residual networks]] lub [[Highway Networks]] (skip connection)

