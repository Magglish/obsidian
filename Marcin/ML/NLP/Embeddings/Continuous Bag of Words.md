# Continous Bag of Words

![[Continous Bag of Words.png]]

Continous Bag of Words (CBOW) to algorytm, który ma za zadanie stworzenie [[Word Embeddings|reprezentacji numerycznej tekstu]]. 

Celem CBOW jest predykcja danego słowa na podstawie jego kontekstu.

Składa się z 3 warstw: 
1. input layer - która podaje teksty zakodowane [[One-hot word embeddings|zero-jedynkowo]]
2. Projection layer - to warstwa liniowa, gęsta, a nie zero-jedynkowa, o wymiarze $D$, co stanowi ostateczny wymiar embeddingów
3. Output layer - to warstwa liniowa, najcześciej soft-max, która zwraca prawdopodobieństwa dla wszystkich słów. Predykcja to argmax z softmaxa.

Loss function to [[Cross-entropy]]

Zaletą C