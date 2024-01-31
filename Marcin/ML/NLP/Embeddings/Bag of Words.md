# Bag of Words

Jest to prosta metoda, która reprezentuje tekst jako wektory. Tekst przedstawiany jest jako wektor zer i jedynek, gdzie jedynki oznaczają, czy w danym tekście istnieje dane słowo ze słownika.

Przykład:

Teksty:

It was the best of times,
it was the worst of times,
it was the age of wisdom,
it was the age of foolishness,

Powstanie z nich słownik słów:

- “it”
- “was”
- “the”
- “best”
- “of”
- “times”
- “worst”
- “age”
- “wisdom”
- “foolishness”

Który może posłużyć do stworzenia wektorów dla zdań:

"It was the best of times" = 
"it was the worst of times" = [1, 1, 1, 0, 1, 1, 1, 0, 0, 0]
"it was the age of wisdom" = [1, 1, 1, 0, 1, 0, 0, 1, 1, 0]
"it was the age of foolishness" = [1, 1, 1, 0, 1, 0, 0, 1, 0, 1]


#review