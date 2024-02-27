# Self-[[Attention mechanism|Attention]]

O co chodzi z tym "self" w Self-Attention - w self-attention "self" odnosi się do zdolności mechanizmu do obliczania wag uwagi poprzez powiązanie różnych pozycji w ramach pojedynczej sekwencji wejściowej. Ocenia i uczy się relacji i zależności między różnymi częściami samego wejścia, takimi jak słowa w zdaniu lub piksele na obrazie. Jest to przeciwieństwo tradycyjnych mechanizmów uwagi, w których nacisk kładziony jest na relacje między elementami dwóch różnych sekwencji, takich jak w modelach [[Sequence2Sequence Models|sekwencja-sekwencja]], w których uwaga może być skupiona między sekwencją wejściową a sekwencją wyjściową.

![[Self-Attention Block.png]]

O self-attention można myśleć jako o spojrzeniu w key-value story:

![[Self-Attention lookup table.png]]

Idea self attention:

1. Każde słowo jest najpierw embeddowane
2. Następnie ztransformuj każdy embedding korzystając z trzech macierzy: Query, Key, Value

![[Self-Attention equation 1.png]]

3. wylicz podobieńśtwa między każdą parą w Keys i Queries i przepuść przez softmax.

![[Self-Attention equation 2.png]]

4. Policz output dla każðego słowa jako ważona suma wartośći:

![[Self-Attention equation 3.png]]

Wady:

1. Self-Attention nie zwraca uwagę na kolejność słów, co może być problematyczne -> rozwiązanie: dodanie [[Positional Embeddings]] na początku sieci
2. Self-Attention nie jest nieliniowa -> rozwiązanie: dodaj po prostu warstwe liniową na outpucie z atencji
3. Self-Attention patrzy na cały tekst, tzn. patrzy w przyszłość - np. dla [[Language Modeling]] albo [[Next-sentence prediction]] to jest problematyczne, bo w czasie inferencji nie mamy możliwości podejrzenia przyszłości -> rozwiązanie: [[Causal Attention]]

