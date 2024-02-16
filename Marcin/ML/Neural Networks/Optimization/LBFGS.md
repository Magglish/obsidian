# LBFGS

Limited Broyden–Fletcher–Goldfarb–Shanno algorithm - algorytm do optymalizacji.

Uzywa macierzy [[Hessian Matrix]], a nie [[Jacobian Matrix]]. Nie wymaga [[Learning Rate]], bo dzieki macierzy Hessian widzimy całą powierzchnię

Użycie:

1. Przy bardzo małych zbiorach, ponieważ macierz Hessian jest ogromna.
2. Przy małych sieciach, ponieważ LBFGS nie działa z [[Stochastic Gradient Descent]] - trzeba puścić cały zbiór