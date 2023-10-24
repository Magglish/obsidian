# Vanishing Gradient

Problem zanikającego gradientu występuje, gdy każdy kolejny update w wagach w wyniku działania [[Backpropagation|wstecznej propagacji błędów]] jest coraz mniejszy. Problem występuje przy;

1. Stosowaniu pewnych funkcji aktywacji, które powodują, że gradienty są małe np. funkcja sigmoidalna, która przy dużych i małych wartościach po prostu ma bardzo małe wartości pochodnych. 