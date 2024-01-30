# Continuous Skip Gram

![[Skip gram.png]]

Skip Gram (CBOW) to algorytm, który ma za zadanie stworzenie [[Word Embeddings|reprezentacji numerycznej tekstu]]. 

Celem Skip gram jest predykcja kontekstu na podstawie danego słowa.

Składa się z 3 warstw: 
1. input layer - która podaje słowo zakodowane [[One-hot word embeddings|zero-jedynkowo]]
2. Projection layer - to warstwa liniowa, gęsta, a nie zero-jedynkowa
3. Output layer - to warstwa liniowa, najcześciej soft-max, która zwraca prawdopodobieństwa dla wszystkich słów. Predykcja to argmax z softmaxa.

Loss function to [[Cross-entropy]]