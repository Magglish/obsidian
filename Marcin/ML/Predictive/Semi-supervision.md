# Semi-supervision
W porównaniu do [[Weak supervision]], semi-supervision wymaga chociaż małej ilości obserwacji z prawdziwymi labelkami, ponieważ opiera się o ideę *self-learning*:
1. uczysz algorytm na mało dostępnych danych
2. wykonujesz predykcje na obserwacjach, które nie mają labelek
3. predykcje z bardzo dużym prawdopodobieństwem traktujesz jako pewne i labelujesz je zgodnie z modelem
4. powtarzach punkt 1-3 aż uzyskasz zadowalający model.