# N-gram

N-gram to nic innego jak sekwencja n-słów, występujących obok siebie. Przykłady:

*Ala ma kota, a kot ma Ale*

Bigramy: (Ala, ma); (ma, kota); (kota, a), (a, kot); (kot, ma); (ma, Ale)
Trigramy: (Ala, ma, kota); (ma, kota, a); (kota, a, kot); (kot, ma, Ale)

Wady:
1. Możemy mieć problem z rzadkością, obserwowany jak w [[One-hot word embeddings|zero-jedynkowym kodowaniu]], w szczególności gdy tworzymy duże N-gramy. Przy dużych N-gramach, reprezentatywność poszczególnych N-gramów po prostu spada.
2. Ustawione na sztywno okno kontekstu
3. Out of Vocabulary, tzn. sytuacja w której podczas predykcji brakuje N-gramów obecnych w zbiorze uczącym.


#review