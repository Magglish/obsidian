# Vanishing Gradient

Problem zanikającego gradientu występuje, gdy każdy kolejny update w wagach w wyniku działania [[Backpropagation|wstecznej propagacji błędów]] jest coraz mniejszy. Problem występuje przy;

1. Stosowaniu pewnych funkcji aktywacji, które powodują, że gradienty są małe np. funkcja sigmoidalna, która przy dużych i małych wartościach po prostu ma bardzo małe wartości pochodnych. 
2. Przy sieciach wielowarstwowych ten problem może wystąpić ponieważ każdy update wstecz ma coraz mniejszą pochodną. Jeśli połączymy to z np. funkcją sigmoidalną, to ten gradient może naprawde nam bardzo szybko zmaleć do zera.

Rozwiązania:

1. Inne funkcje aktywacji np. [[ReLU]]
2. [[Residual networks]] - które łączą 
3. [[Batch normalization]] - zmniejszenie wartości do przedziału, w którym np. te pochodne już są znacznie większe 