# Relative Positional Embeddings

Jeden z [[Positional Embeddings|embedingów pozycji tekstu]]. 

Podejście zakłada dodanie informacji o tym "jak daleko jest dane słowo w tekście od innych słów"

Zaletą relatywnego vs. [[Absolute Positional Embeddings|absolutego]] podejścia jest lepsza możliwość generalizacji modelu, szczególnie w sytuacji gdy chcemy wykonać predykcję na tekście, który jest dłuższy niż teksty użyte do uczenia modelu.

