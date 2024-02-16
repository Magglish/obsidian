# Dead ReLU

Problem ze stosowaniem [[ReLU]], ponieważ gradient $=0$ gdy $x < 0$. Dead ReLU, czyli nigdy sie nie aktywuje, czyli nigdy sie nie zaupdatuje.

Powody:
1. Pech podczas inicjalizacji wag w neuronie który ma w sobie ReLU, jeżeli będziemi mieli pecha z inicjalizacji
2. Trzeba też uważać ze zbyt dużym [[Learning Rate]], bo to też może spowodować martwe neurony.

Rozwiązania:
1. Zainicjowanie neurononów z ReLU z delikatnie pozytywnym biasem (np. 0.01), ale jest to kontrowersyjne i nie zawsze działa. 
2. Zastosowanie [[Leaky ReLU]]


Sposoby na identyfikacje:
1. Można ten problem zidentyfikować i np. przepuścić cały zbiór uczący przez sieć i sprawdzić wartości aktywacji neuronów z ReLU dla każdego przypadku (np. narysować rozkłąd) i jeżeli on jest całkowicie 0 to oznacza to, że mamy martwe neurony.