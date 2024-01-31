# Bag of Words

Jest to prosta metoda, która reprezentuje tekst jako wektory. Tekst przedstawiany jest jako wektor zer i jedynek, gdzie jedynki oznaczają, czy w danym tekście istnieje dane słowo ze słownika.

Wady:
1. [[One-hot word embeddings|Zakodowane zero-jedynkowo]]
2. Nie ma kontekstu
3. Nie zachowana kolejność słów
4. Trzeba dobrze zaprojektować słownik (usunąć stop-wordsy, stemming/lematyzacja, usunięcie interpunkcji, naprawa błędów w słowach)

**Przykład:**

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

"It was the best of times" = [1, 1, 1, 1, 1, 1, 0, 0, 0, 0]
"it was the worst of times" = [1, 1, 1, 0, 1, 1, 1, 0, 0, 0]
"it was the age of wisdom" = [1, 1, 1, 0, 1, 0, 0, 1, 1, 0]
"it was the age of foolishness" = [1, 1, 1, 0, 1, 0, 0, 1, 0, 1]


#review