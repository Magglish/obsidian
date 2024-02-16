# Sigmoid

![[Sigmoid Activation Function.png]]

Wartość wyjściowa w zakresie [0, 1], przez co interpretowana jako "fire rate" - jak mocno dany neuron ma "działać".

Problemy:

1. Funkcja sigmoidalna może być powodem [[Vanishing Gradient]]
2. Wyjścia z funkcji sigmoidalnej nie są zcentrowane wokół zera (są wartości i ujemne i dodatnie), a są cały czas pozytywne. W efekcie czego gradienty albo są wszystkie pozytywne, albo negatywne. W efekcie czego optymalizacja sieci z funkcjami aktywacji sigmoidalnej jest "skokowa", a nie "wprost", tak jak jest to na obrazku poniżej.

![[Input do neurona jest zawsze pozytywny.png]]
