# Sigmoid

![[Sigmoid Activation Function.png]]

Wartość wyjściowa w zakresie [0, 1], przez co interpretowana jako "fire rate" - jak mocno dany neuron ma "działać".

Problemy:

1. Funkcja sigmoidalna może być powodem [[Vanishing Gradient]], bo gradienty dla wartości na jej końcach są blisko 0. Poprzez użycie [[Chain Rule]], mnożenie gradientów przez siebie spowoduje ich znaczne obniżenie i w efekcie czego "znikną".
2. Wyjścia z funkcji sigmoidalnej nie są zcentrowane wokół zera (są wartości i ujemne i dodatnie), a są cały czas pozytywne. W efekcie czego gradienty albo są wszystkie pozytywne, albo negatywne. W efekcie czego optymalizacja sieci z funkcjami aktywacji sigmoidalnej jest "skokowa", a nie "wprost", tak jak jest to na obrazku poniżej. W efekcie czego uczenie jest dłuższe i mniej efektywne

![[Input do neurona jest zawsze pozytywny.png]]

3. Liczenie `exp` (które jest w mianowniku) jest kosztowne
