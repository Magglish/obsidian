# LBFGS

Limited Broyden–Fletcher–Goldfarb–Shanno algorithm - algorytm do optymalizacji.

Uzywa macierzy [[Hessian Matrix]], a nie [[Jacobian Matrix]]. Nie wymaga [[Learning Rate]], bo dzieki macierzy Hessian widzimy całą powierzchnię i wiemy "gdzie wcelować". 

Zaleta:

1. Nie liczy całej macierzy Hessian, co byłoby niemożliwe do obliczeń w dużych sieciach neuronoiwych.

Użycie:

 1. Przy bardzo małych zbiorach, ponieważ LBFGS nie działa z [[Stochastic Gradient Descent]] - trzeba puścić cały zbiór.