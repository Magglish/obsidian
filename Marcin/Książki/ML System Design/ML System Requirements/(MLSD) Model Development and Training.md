# Model Development and Training
#### Unikaj "pułapki state-of-the-art" - nie rzucaj się od razu na obecne SOTA. 
1. Obecne SOTA są ewaluowane na pewnym statycznym datasecie
2. SOTA wyznaczane jest na podstawie ML-owej metryki (accuracy, precision itd.). Nie uwzględnia metryk biznesowych
3. SOTA nie uwzględnia kosztu pamięci, kosztu compute power, jakiej infrastruktury potrzebujesz żeby w ogóle nauczyć model
4. Szukaj rozwiązania pod dany problem, które może być znacznie łatwiejsze do zaimplementowania i prostsze niż SOTA

#### Zaczynaj od prostych modeli
1. Prostsze modele łatwiej i szybciej zdeployować, dzięki czemu szybko możemy sprawdzić błędy w naszym pipeline.
2. Zaczynajac od prostszych modeli i iterując dalej, dodając dodatkowe bardziej skomplikowane komponenty, pozwoli na lepsze zrozumienie tego jak model działa.
3. Proste modele służą jako baseline.

#### Unikaj błędów ludzkich w wyborze modeli
1. Nie fixuj sie na jakiejś konkretnej architekturze, np. porównywałeś MLP z XGBoostem, gdzie przy MLP wykonałeś 1000 eksperymentów, a nad XGB 10. Niech każdy z algorytmów ma taką samą "szanse".

#### Najlepszy model teraz nie oznacza najlepszego modelu potem
1. Ewaluuj różne modele wraz z nowymi danymi - pomocnym w tym celu może być learning curve vs. ilość obserwacji, po to aby nabrać spojrzenia czy więcej danych może poprawić jakość modelu.

#### Trade-off
1. Weź pod uwagę compute power oraz memory requirements
2. Weź pod uwage trade-off pomiędzy false positives i false negatives itd.