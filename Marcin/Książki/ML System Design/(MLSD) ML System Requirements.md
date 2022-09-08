# ML System Requirements
#### Reliability
1. *Reliability* (Niezawodność) oznacza, że system powinien spełniać swoje funkcje na pożądanym poziomie wydajność nawet w obliczu problemów.
2. Jednakże w przypadku systemów MLowych jest znacznie trudniej uzyskać tą niezawodność. W przypadku pewnych problemów zrzucane są błędy np. 404 czy jakieś wyjątki wprost z software, ale modele potrafią wywalić się po cichu. Przykład: Nagle wasz model zwraca predykcje z samymi zerami - to można jeszcze wychwycić, ale co jeżeli wasz model z jakiegoś przypadku zwraca np. predykcje o 3 razy mniejsze?

#### Scalability
1. *Scalability* (Skalowalność) oznacza, że system powinien być dostosowywany (najlepiej automatycznie) do jego zużycia.
2. W przypadku modelu ML zużycie może się zwiększyć ponieważ:
	1. Nagle więcej macie zapytań do modelu
	2. Wasz model jest znacznie większy i wymaga więcej pamięci/zasobów itd.
	3. Dodajecie coraz więcej featerów do modelu

