# Testing

W kontekście MLa, w procesie testowania należy również uwzględnić testy

Danych:
1. Walidacja schematu danych
2. Ważność zmiennych 
3. Rozkłady zmiennych
4. Bugi w kodzie (unittesty)

Modelu:
1. Czy metryki modelu korelują z metrykami biznesowymi
2. Aktualność danych na których się uczył
3. Porównanie modelu z baseline'm
4. Walidacja modelu i jego mocy
5. Obciążenie modelu (np. jakimiś specyficznymi danymi)
6. Bugi w kodzie (unittesty)

Infrakstruktury:
1. Czy model nauczony na tych samych danych wychodzi taki sam za kazdym razem
2. Stress testy API
3. Testowanie czy model jest wciaz poprawny


**Dodatkowe powiązania:**
[[MLE vs. SWE]], [[Continuous Integration|CI]]/[[Continuous Deployment|CD]]/[[Continuous Training|CT]]/[[Continuous Monitoring|CM]], [[(TT) Paraliż systemu]], [[(TT) Mierzenie wydajności systemu]]

**Narzędzia do testowania:**
1. 

**Źródła:**
1. https://ml-ops.org/content/mlops-principles#iterative-incremental-process-in-mlops