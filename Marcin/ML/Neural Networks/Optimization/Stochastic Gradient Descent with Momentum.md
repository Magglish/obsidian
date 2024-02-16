# Stochastic Gradient Descent with Momentum

Algorytm [[Stochastic Gradient Descent|SGD]] z momentum.

![[SGD with Momentum wzor.png]]

Momentum to inaczej wartośći poprzednich gradientów, aby nadać większego pedu optymalizacji. Momentum można uznać też jako przyśpieszenie.

Przeważnie momentum $\beta$ ustalane jest na 0.5, 0.9 albo 0.99.

Intuicja:


1. Jeżeli poruszamy się po powierzchni funkcji która jest w miare płytka (liniowa) w konkretnym kierunku, to nabieramy pędu
2. Jeśli trafimy na dołek, to wtedy powoli wytracamy pęd i w końcu zatrzymamy się w optimum

Zalety:

1. Momentum może pozwolić na wyjście z lokalnego optimum dzięki czemu pójdziemy dalej z optymalizacją

Lepsza wersja [[Nesterov Accelerated Gradient]]