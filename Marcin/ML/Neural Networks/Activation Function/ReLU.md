# ReLU

![[ReLU Activation Function.png]]

Gradient jest albo 0 (gdy $x < 0), albo 1 (gdy x > 0)

1. Efektywne obliczeniowo - łatwiej policzyć niż np. `exp` w [[Sigmoid]] czy [[Tanh]]
2. Nie ma problemu z [[Vanishing Gradient]] (ale w wymiarze pozytywnym, w "połowie regionu")
3. Sieci neuronowe z tą funkcją aktywacji znacznie szybciej się uczą, łatwiej zbiegają do optimum 

Wady:

1. Niestety nie jest zero-centered, problem jak w [[Sigmoid]]
2. Gradient $=0$ gdy $x < 0$
