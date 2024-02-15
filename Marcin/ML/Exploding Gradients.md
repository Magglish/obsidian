# Exploding Gradient

Problem eksplozywnego gradientu występuje, gdy każdy kolejny update w wagach w wyniku działania [[Backpropagation|wstecznej propagacji błędów]] jest coraz większy.

Podczas wstecznej propagacji mnożymy gradienty odpowiednio przez macierze i w końcu przy wielu iteracjach wartości będą bardzo maleć albo bardzo rosnąć.    Na chłopski rozum, jeżeli wartość `2` mnożyłbyś cały czas przez np. `1.5` to w końću ta wartość urośnie do niebotycznych rozmiarów. Analogicznie jak `2` przez `0.5` - w końcu by to zmalało do zera.

Rozwiazanie:

1. [[Clipping gradients]]

