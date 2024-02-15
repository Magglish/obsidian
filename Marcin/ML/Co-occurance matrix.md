# Co-occurance matrix

Co-occurance matrix, czyli macierz współwystępowania danych słów

Poniższy przykład ma window_size = 1
![[Macierz współwystępowania.png]]

Problemy:

1. Ogromne wektory, rosnące z wielkością słownika
2. Problem z rzadkością takich wektorów

Rozwiązaniem problemów: zredukowanie wymiarów za pomocą [[Singular Value Decomposition|SVD]]

Jednakże trzeba odpowiednio zbiór wyczyścić przed tym, np.
1. Wyrzucenie stop wordsów
2. Tylko te, które mają jakąś minimalną liczbę występowania (wyrzucenie rzadkich słów)
3. Logarytm z liczebności (wtedy rzadkie słowa mają większe wartości)

Dodatkowe rzeczy usprawniające:
1. Ramped windows, tzn. większe wartości dla słów występujących bliżej danego słowa
2. Zamiast liczebności np. jakaś inna metryka (korelacja?)
