---
sr-due: 2023-01-28
sr-interval: 14
sr-ease: 200
---

# Mixin

Mixin to taka klasa, która dostarcza pewnej implementacji/zachowania i tworzona jest z myślą o reużywalności kodu. Z reguły sama z siebie klasa Mixin jest nieużyteczna - staje się dopiero w innych klasach, które po niej dziedziczą.

Np.:

Podstawowa klasa
```python
class BaseTokenizer:
	def __init__(self, str_token):
		self.str_token = str_token
	def __iter__(self):
		yield from self.str_token.split("-")
```

Mixin:
```python
class UpperIterableMixin:
	def __iter__(self):
		return map(str.upper, super().__iter__())
```

Podstawowa klasa korzystająca z Mixin
```python
class Tokenizer(UpperIterableMixin, BaseTokenizer):
	pass
```
W ten sposób korzystamy z `__iter__` z `UpperIterableMixin`. Kiedy warto tego użyć? Kiedy np. bardzo dużo klas dziedziczy po `BaseTokenizer` i nie chcemy zmieniać tej bazowej implementacji.

#review