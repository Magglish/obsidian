# Inheritance


Kiedy warto stosować dziedzienie:
1. Kiedy chcemy aby był spójny interfejs klas - tworzymy wtedy klase abstrakcyjną, która definiuje interface
2. Kiedy nowa klasa jest czymś bardziej specyficznym od klasy z której dziedziczymy, ale użyjemy znacznej większość metod z klasy po której dziedziczymy (tworzymy "specjalizację")


Kiedy warto nie robić dziedziczenia:
1. Jeśli nie będziemy używać znacznej większości metod z klasy po której dziedziczymy
2. Jeśli musimy zmieniać znaczną większość metod z klasy z której dziedziczymy
3. Nie miksujemy struktur danych z business domain classes. Przykład: chcemy zrobić np. klase z transakcją. Nie implementujemy jej dziedzicząc po `UserDict` (bo otrzymujesz wtedy mnóstwo dodatkowych metod, które nie mają sensu), a tworzysz klase korzystająć z [[Composition|kompozycji]] w taki sposób, że np. w parametrze `_data` są dane jako `dict` i definiujesz tylko 2-3 metody żeby te dane pobrać `__getitem__` i np. zaktualizować. Wtedy masz tylko kilka metod konkretnie pod ten case, a nie multum niepowiązanych.

Zalety.
1. Znacznie większy code reuse

Wady:
1. Inheritance zwiększa poziom [[Coupling]]

#dokoncz