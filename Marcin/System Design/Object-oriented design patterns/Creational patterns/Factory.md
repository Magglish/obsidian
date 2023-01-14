# Factory

Factory oznacza, że tworzenie konkretnych klas obsługujemy inną klasą, która inicjalizuje obiekty zgodnie z podanymi parametrami do niej. Klasy, które są tworzone przez klase Factory określane są jako "products".

W Factory chodzi o to aby wydzielić logikę inicjalizacji klas do oddzielnej klasy Factory, a konkretne klasy skupiają się na samej logice działania.

Używamy gdy:
1. nie wiemy do końca z jakimi typami i zależnościami będziemy finalnie pracować - dlatego lepiej jest rozdzielić kod odpowiedzialny za tworzenie klas (który będzie w Factory) od logiki działania klasy








**Przykład w Pythonie:**