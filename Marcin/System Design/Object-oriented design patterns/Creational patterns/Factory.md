# Factory

Factory oznacza, że tworzenie konkretnych klas obsługujemy inną klasą, która inicjalizuje obiekty zgodnie z podanymi parametrami do niej. Klasy, które są tworzone przez klase Factory określane są jako "products".

W Factory chodzi o to aby wydzielić logikę inicjalizacji klas do oddzielnej klasy Factory, a konkretne klasy skupiają się na samej logice działania.

Używamy gdy:
1. nie wiemy do końca z jakimi typami i zależnościami będziemy finalnie pracować - dlatego lepiej jest rozdzielić kod odpowiedzialny za tworzenie klas (który będzie w Factory) od logiki działania klasy








**Przykład w Pythonie:** #dokoncz  sprawdz czy to ponizsze ma sens

```python
class MyClass1:
	pass

class MyClass2:
	pass

class MyClass3:
	pass

class MyClassBuilder:
	all_classes = {
		'1': MyClass1,
		'2': MyClass2,
		'3': MyClass3
	}

	@staticmethod
	def build(class_name, *args, **kwargs):
		return all_classes[class_name](*args, **kwargs)
```