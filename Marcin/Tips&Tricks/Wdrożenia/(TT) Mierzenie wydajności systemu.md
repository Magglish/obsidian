# Mierzenie wydajności systemu
1. Możemy przeprowadzić dwie symulacje, żeby określić wydajność systemu. Pierwsza zakłada, że posiadamy stałą ilość zasobów obliczeniowych, podnosimy obciążenie i obserwujemy wydajność. Druga zakłada, że chcemy utrzymać taką samą wydajność, podnosimy obciążenie i dostosowujemy ilość zasobów obliczeniowych.
2. Zdefiniujmy na nowo przykładową metrykę sukcesu, mierzącą wydajność tym razem dwoma warunkami:

	1.  środkowa (mediana) odpowiedzi mniejsza niż 200 ms,
	2.  99,9% odpowiedzi w czasie krótszym niż 500 ms.

Takie podejście do sprawy jest lepsze, ponieważ uwzględnia rozkład oczekiwania na odpowiedź, dlatego kompromis w postaci mierzenia wartości średniej jest ciągle zbyt dużym uogólnieniem. 

Co istotne, podczas testowania wydajności pod obciążeniem generowane sztucznie żądania muszą być wysyłane niezależnie od przychodzących odpowiedzi, żeby odwzorować świat rzeczywisty.
3. Regułą jest, że kiedy jeden z czynników wpływający na obciążenie zwiększy się o rząd wielkości, sama architektura również ulegnie zmianie, zapewne nawet wcześniej. Do tego czasu mamy dwie strategie zwiększania mocy przerobowych: **skalowanie w górę** (scale up, vertical scaling), czyli zwiększanie mocy obliczeniowych tej konkretnej maszyny, na której pracuje komponent systemu, oraz **skalowanie w bok** (scale out, horizontal scaling), czyli zwiększanie ilości maszyn obliczeniowych

**Źródła:**
1. https://datasciencein.pl/designing-data-intensive-applications-niezawodne-skalowalne-i-latwe-w-utrzymaniu-aplikacje-podsumowanie-rozdzialu-1/?utm_source=pocket_mylist#:~:text=Definiowanie%20wydajno%C5%9Bci