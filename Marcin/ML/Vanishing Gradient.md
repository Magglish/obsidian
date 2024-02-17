# Vanishing Gradient

Problem zanikającego gradientu występuje, gdy każdy kolejny update w wagach w wyniku działania [[Backpropagation|wstecznej propagacji błędów]] jest coraz mniejszy, w wyniku czego model nie jest w stanie nauczyć się długich zależności (w szczególności przy problemach NLP) Problem występuje przy;

1. Stosowaniu pewnych funkcji aktywacji, które powodują, że gradienty są małe np. funkcja sigmoidalna, która przy dużych i małych wartościach po prostu ma bardzo małe wartości pochodnych. 
2. Przy sieciach wielowarstwowych ten problem może wystąpić ponieważ każdy update wstecz ma coraz mniejszą pochodną. Jeśli połączymy to z np. funkcją sigmoidalną, to ten gradient może naprawde nam bardzo szybko zmaleć do zera. podczas wstecznej propagacji mnożymy gradienty odpowiednio przez macierze i w końcu przy wielu iteracjach wartości będą bardzo maleć albo bardzo rosnąć.    Na chłopski rozum, jeżeli wartość `2` mnożyłbyś cały czas przez np. `1.5` to w końću ta wartość urośnie do niebotycznych rozmiarów. Analogicznie jak `2` przez `0.5` - w końcu by to zmalało do zera.

Rozwiązania:

1. Inne funkcje aktywacji np. [[ML/ReLU]]
2. Inna architektura np. w przypadku [[RNN]] lepiej użyć [[LSTM]]
3. [[Residual networks]] - które dodają do siebie wartości z poprzednich warstw
4. [[Batch Normalization]] - zmniejszenie wartości do przedziału, w którym np. te pochodne już są znacznie większe 
5. [[Dense Networks]]