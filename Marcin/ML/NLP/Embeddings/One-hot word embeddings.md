# One-hot word embeddings

One-hoy [[Word Embeddings]] zakładają, że każde słowo jest reprezentowane jako wektor, składający się z samych zer i jedynek. Taki wektor jest wtedy [[Sparse matrix or vector|rzadki]].

Niestety podejście nie jest używane ponieważ:

1. Wektory są wtedy [[Sparse matrix or vector|bardzo rzadkie]] i wielowymiarowe - wymiar takiego wektora wynosi rozmiar korpusu (liczba unikalnych słów) - przez co przetwarzanie takich wektorów może wymagań dużej ilości pamięci RAM żeby wszystkie je zaalokować
2. Dwa wektory są ortogonalne, prostopadłe, zatem nie ma mowy o mówieniu tutaj o jakimkolwiek podobieństwu w słowach, pomimo tego, że z poziomu widzienia tekstu są podobne np.:
3. Z praktyki wynika, że takie reprezentacje są też bardzo słabe pod względem wykorzystania ich w różnych problemach NLP i istnieją lepsze sposoby na zaprezentowanie tekstu jako liczby

$$motel = \begin{bmatrix} 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 \end{bmatrix}$$

$$hotel = \begin{bmatrix} 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \end{bmatrix}$$

Dla takich wektorów [[Cosine similarity|podobieństwo]] zawsze będzie wynosiło 0, pomimo tego, że `hotel` i `motel` są do siebie bardzo podobne


#review