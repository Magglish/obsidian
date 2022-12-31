# Liskov's substitution principle

Liskov's substitution principle mówi o tym, że używanie podtypów danej klasy powinno być transparentne i nie zauważalne. Innymi słowy, zmiany w hierarchi dziedziczenia nie powinny mieć wpływu na działanie programu. (Podobne do [[Design by Contract]])

Oryginalna definicja: Jeśli object $S$ jest podtypem $T$, to obiekty typu $T$ mogą zostać zastąpione przez $S$ bez rozwalenia programu.

Przykłady: 
1. Klasy, które dziedziczą po jakiejś klasie powinny mieć argumenty tego samego typu i powinny zwracać ten sam typ co klasa po której dziedziczą.
2. Klasy, które dziedziczą po jakiejś klasie powinny mieć takie same argumenty (nie więcej, nie mniej).