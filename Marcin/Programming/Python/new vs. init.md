# `__new__` vs `__init__`

```python
class Point: 
	def __new__(cls): 
		... 
	def __init__(self): 
		...
```

### Różnice:
1. `__new__` to konstruktor, `__init__` to inicjalizator.
2. `__new__` jest metodą statyczną i przyjmuje `cls` czyli referencja do klasy na której jest wykonywana.
3. Wartość którą zwraca `__new__` jest wartością zwróconą z wywołania samej klasy

```python
class Dummy: 
	def __new__(cls): return 1 
	
print(Dummy() == 1) 
>>> True
```

4. Jeśli `__new__` nie zwróci instancji klasy na której jest wywołany to `__init__` nie zostanie wywołany.
5. Argumenty w `__new__` muszą być takie same jak w `__init__`

### Wykorzystanie
1. [[Singleton pattern]]
```python
class Singleton: 
	_instance = None # Keep instance reference 
	
	def __new__(cls, *args, **kwargs): 
		if not cls._instance: 
			cls._instance = super().__new__(cls) 
			return cls._instance 
			
s1 = Singleton() 
s2 = Singleton() 
print(s1 == s2)
>>> True
```

2. Rejestracja pochodzenia podczas dziedziczenia.

```python
class BaseClass: 
	def __new__(cls): 
		obj = super(BaseClass, cls).__new__(cls) 
		obj._from_base_class = type(obj) == BaseClass 
		return obj 
	
class SubClass(BaseClass): 
	... 
	
base_instance = BaseClass() 
sub_instance = SubClass() 
print(base_instance._from_base_class) >>> True print(sub_instance._from_base_class) >>> False
```

3. Modyfikacja i tworzenie typów `immutable`
`__new__` pozwala na modyfikację zwracanej wartości. Jeśli chcemy zmodyfikować tworzenie typów `immutable`, `__init__` nam się nie przyda, ponieważ w tej części konstruktora już jest za późno, dostaliśmy gotową instancję. Dlatego potrzebujemy metody `__new__`.

```python
class PositiveNumberTuple(tuple): # 1 
	def __new__(cls, *numbers): 
		skipped_values_count = 0 # 4 
		positive_numbers = [] 
		for x in numbers: 
			if x >= 0: # 2, 3 
				positive_numbers.append(x) 
			else: skipped_values_count += 1 
			
		instance = super().__new__(cls, tuple(positive_numbers))
		instance.skipped_values_count = skipped_values_count 
		return instance 
	
positive_ints_tuple = PositiveNumberTuple(-2, -1, 0, 1, 2) print(positive_ints_tuple) # -> (0, 1, 2) 
print(type(positive_ints_tuple)) # -> <class '__main__.PositiveNumberTuple'> 
print(positive_ints_tuple.skipped_values_count) # -> 2
```

**Źródła:**

1. https://datasciencein.pl/python-__new__-czyli-pelna-kontrola-nad-konstruktorem/?utm_source=pocket_mylist