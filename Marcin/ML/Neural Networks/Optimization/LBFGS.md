# LBFGS

Limited Broyden–Fletcher–Goldfarb–Shanno algorithm - algorytm do optymalizacji.

Uzywa macierzy [[Hessian Matrix]], a nie [[Jacobian Matrix]]. Nie wymaga [[Learning Rate]], bo dzieki macierzy Hessian widzimy całą powierzchnię i wiemy "gdzie wcelować"

Użycie:

1. Przy małych sieciach, ponieważ macierz Hessian tworzy się bardzo duża.
2. Przy bardzo małych zbiorach, ponieważ LBFGS nie działa z [[Stochastic Gradient Descent]] - trzeba puścić cały zbiór.