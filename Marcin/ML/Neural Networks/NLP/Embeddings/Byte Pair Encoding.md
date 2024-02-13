# Byte Pair Encoding

Byte Pair Encoding to jeden z algorytmów do tworzenia tokenów z tekstu. Idea polega na tym aby rozdzielić dane słowo na podsłowa. Jednakże nie wszystkie słowa są rozdzielane na podsłowa, a bardziej te rzadkie słowa. BPE stara się aby częste słowa były reprezentowane jako jeden token, natomiast rzadkie słowa były rozbijane na mniejszcze części. Dzięki temu problem słów OOV powinien nie występować




**Technicznie:**
Załóżmy, że mamy dane aaabdaaabac, które muszą zostać zakodowane (skompresowane). Para bajtów aa występuje najczęściej, więc zastąpimy ją Z, ponieważ Z nie występuje w naszych danych. Mamy więc teraz ZabdZabac, gdzie Z = aa. Następną często występującą parą bajtów jest ab, więc zastąpmy ją Y. Mamy teraz ZYdZYac, gdzie Z = aa i Y = ab. Jedyną pozostałą parą bajtów jest ac, która pojawia się jako jeden, więc nie będziemy jej kodować. Możemy użyć rekurencyjnego kodowania par bajtów, aby zakodować ZY jako X. Nasze dane przekształciły się teraz w XdXac, gdzie X = ZY, Y = ab i Z = aa. Nie można go dalej kompresować, ponieważ nie ma par bajtów pojawiających się więcej niż raz. Dekompresujemy dane, wykonując zamiany w odwrotnej kolejności.