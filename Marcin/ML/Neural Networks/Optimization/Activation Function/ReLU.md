# ReLU

![[ReLU Activation Function.png]]

Gradient jest albo 0 (gdy $x < 0), albo 1 (gdy x > 0), zatem w [[Backpropagation]] można potraktować neurony z takimi funkcjami aktywacji jako "bramke" - puszczamy gradient dalej (zgodnie z [[Chain Rule]] taki jaki przyszedł, bo jest mnożenie przez 1) , czy nie (mnożenie przez 0 daje zero)?

1. Efektywne obliczeniowo - łatwiej policzyć niż np. `exp` w [[Sigmoid]] czy [[Tanh]]
2. Nie ma problemu z [[Vanishing Gradient]] (ale w wymiarze pozytywnym, w "połowie regionu")
3. Sieci neuronowe z tą funkcją aktywacji znacznie szybciej się uczą, łatwiej zbiegają do optimum 

Wady:

1. Niestety nie jest zero-centered, problem jak w [[Sigmoid]]
2. Gradient $=0$ gdy $x < 0$. Jest to problematyczne, podczas inicjalizacji wag w neuronie który ma w sobie ReLU, jeżeli będziemi mieli pecha to możemy trafić na tzw. Dead ReLU, czyli nigdy sie nie aktywnie, czyli nigdy sie nie zaupdatuje - rozwiązaniem tego jest zainicjowanie neurononów z ReLU z delikatnie pozytywnym biasem (np. 0.01), ale jest to kontrowersyjne i nie zawsze działa. Rozwiązaniem może być też zastosowanie [[Leaky ReLU]]
   Można ten problem zidentyfikować i np. przepuścić cały zbiór uczący przez sieć i sprawdzić wartości aktywacji neuronów z ReLU dla każdego przypadku (np. narysować rozkłąd) i jeżeli on jest całkowicie 0 to oznacza to, że mamy martwe neurony.
1. Nie ma gradientu dla $x = 0$ - rozwiązane w bibliotekach do Deep Learningu, że jeśli $x=0$ to gradient $=0$
