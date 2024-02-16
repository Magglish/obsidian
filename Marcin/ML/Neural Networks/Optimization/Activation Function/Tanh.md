# Tanh

Tangenshiperboliczny

![[Tanh Activation Function.png]]

1. Outputuje wartości w zakresie [-1; 1], dzięki czemu nie ma problemu z danymi niewycentrowanymi w zerze, jaki jest w [[Sigmoid|funkcji sigmoidalnej]]
2. Jest powodem [[Vanishing Gradient]], bo gradienty dla wartości na jej końcach są blisko 0. Poprzez użycie [[Chain Rule]], mnożenie gradientów przez siebie spowoduje ich znaczne obniżenie i w efekcie czego "znikną".