
# Liskov's substitution principle

Liskov's substitution principle mówi o tym, że używanie podtypów danej klasy powinno być transparentne i nie zauważalne. Innymi słowy, jeżeli zastąpisz klase po której dziedziną inne klasy (superklase), właśnie tymi klasami, które dziedziczą (podklasy) to działanie aplikacji nie powinno się rozwalić. (Podobne do [[Design by Contract]])

Oryginalna definicja: Jeśli object $S$ jest podtypem $T$, to obiekty typu $T$ mogą zostać zastąpione przez $S$ bez rozwalenia programu.

Przykłady: 
1. Klasy, które dziedziczą po jakiejś klasie powinny mieć argumenty tego samego typu i powinny zwracać ten sam typ co klasa po której dziedziczą.
2. Klasy, które dziedziczą po jakiejś klasie powinny mieć takie same argumenty (nie więcej, nie mniej).

