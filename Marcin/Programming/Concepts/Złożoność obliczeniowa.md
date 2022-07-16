# Złożoność obliczeniowa
Algorytm to metoda która dla danego zbioru `x` generuje wynik `y` zachowując przy tym założenia:
1. o skończonej liczbie kroków (nie można stworzyć nieskończonego algorytmu)
2. o obliczalnych/wykonywalnych krokach
3. o jednoznacznie zdefiniowanych krokach

Notacja dużego $O$ (złożoność obliczeniowa) mówi o ilości wykonanych kroków, a nie o czasie wykonania, jednakże ilość wykonanych kroków idzie w parze z szybkością. Liczba $n$ w notacji oznacza liczbę podanych elementów. Notacja ta **opisuje najmniej korzystny przypadek** z punktu widzenia wykonywanego algorytmu (można wyobrazić sobie, że nasz algorytm wykonuje od $1$ do $n^3$ operacji w zalezności od jakichś warunków w nim zdefiniowanych, ale notacja mówi o najmniej korzystnym przypadku, zatem złożoność takiego algorytmu wynosi $n^3$.)

### Przykładowe notacje:
$O(1)$ - stała złożoność obliczeniowa.
$O(n)$ - złożoność liniowa: tyle operacji ile elementów zostało podanych.
$O(\log n)$ - złożoność logarytmiczna często spotykana w algorytmach dziel i rządź np. w [[Wyszukiwanie binarne|wyszukiwaniu binarnym]] lub w [[Drzewo decyzyjne|drzewach decyzyjnych]]).
$O(n \cdot \log n )$ - złożoność często występująca w  algorytmach sortowania (np. [[Sortowanie przez łączenie|sortowanie przez łączenie]]).
$O(n^2)$ - złożoność kwadratowa często występująca w podwójnej pętli for.
$O(2^n)$ - złożoność wykładnicza np. algorytm [[Programming/Algorithms/Brute force attack|brute force attack]]
$O(n!)$ - złożoność $n$ silnia np. algorytm rozwiązujacy [[Problem komiwojażera|problem komiwojażera]].

**Źródła:**
1. https://devszczepaniak.pl/zlozonosc-obliczeniowa-algorytmow/?utm_source=pocket_mylist