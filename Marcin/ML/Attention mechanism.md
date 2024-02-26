# Attention mechanism

Mechanizm atencji w swoim założeniu to nic innego jak uwzględnienie kontekstu wpuszczanego tekstu do modelu. Powstała w wyniku poprawy modeli [[Sequence2Sequence Models]]

Czyli podczas swojego zadania jak np. [[Next-sentence prediction|generowanie następnego słowa]] czy [[Masked language modelling|określenie jakie słowo znajduje się pod MASKą]] mamy informacje o całym inpucie, całym tekście przez co model może skupić się na pewnych słowach bardziej, a na innych mniej co wpłynie ostatecznie na jego predykcję.

Problemem jest to, że jest to kosztowne obliczeniowo bo tam pod spodem używane są trzy macierze:

1. Query
2. Key
3. Value