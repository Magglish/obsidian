# ReLU

![[ReLU Activation Function.png]]

Gradient jest albo 0 (gdy $x < 0), albo 1 (gdy x > 0), zatem w [[Backpropagation]] można potraktować neurony z takimi funkcjami aktywacji jako "bramke" - puszczamy gradient dalej (zgodnie z [[Chain Rule]] taki jaki przyszedł, bo jest mnożenie przez 1) , czy nie (mnożenie przez 0 daje zero)?

1. Efektywne obliczeniowo - łatwiej policzyć niż np. `exp` w [[Sigmoid]] czy [[Tanh]]
2. Nie ma problemu z [[Vanishing Gradient]] (ale w wymiarze pozytywnym, w "połowie regionu")
3. Sieci neuronowe z tą funkcją aktywacji znacznie szybciej się uczą, łatwiej zbiegają do optimum 

Wady:

1. Niestety nie jest zero-centered, problem jak w [[Sigmoid]]
2. Problem z [[Dead ReLU]]
3. Nie ma gradientu dla $x = 0$ - rozwiązane w bibliotekach do Deep Learningu, że jeśli $x=0$ to gradient $=0$
