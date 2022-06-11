# Amdahl's Law
Prawo Amdahla jest używane w przetwarzaniu równoległym aby określic teoretycznie jaki jest uzysk w czasie gdy korzystamy z wielu rdzeni.

Na przykład, jeśli program wymaga 20 godzin pracy przy użyciu pojedynczego wątku, ale jednogodzinna część programu nie może zostać sparalelizowana, a zatem tylko pozostałe 19 godzin (p = 0,95) czasu wykonania może zostać sparalelizowane, to niezależnie od tego, ile wątków zostanie przeznaczonych do sparalelizowanego wykonania tego programu, minimalny czas wykonania nie może być krótszy niż jedna godzina. W związku z tym teoretyczny wzrost prędkości jest ograniczony do co najwyżej 20-krotnego zwiększenia wydajności pojedynczego wątku.

Jest to w szczególności widoczne przy programach typu map-reduce. Map można sparalelizować, ale reduce jest jednowątkowe, zatem maksymalna redukcja czasu wynosi tyle ile krok reduce wynosi.

![[Amdahl's Law.png]]

**Źródła:**
1. [Wikipedia](https://en.wikipedia.org/wiki/Amdahl%27s_law)
2. [Blog](https://koaning.io/posts/amdahls-law)