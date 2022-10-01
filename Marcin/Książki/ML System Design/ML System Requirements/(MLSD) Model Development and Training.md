# Model Development and Training
#### Unikaj "pułapki state-of-the-art" - nie rzucaj się od razu na obecne SOTA. 
1. Obecne SOTA są ewaluowane na pewnym statycznym datasecie
2. SOTA wyznaczane jest na podstawie ML-owej metryki (accuracy, precision itd.). Nie uwzględnia metryk biznesowych
3. SOTA nie uwzględnia kosztu pamięci, kosztu compute power, jakiej infrastruktury potrzebujesz żeby w ogóle nauczyć model
4. Szukaj rozwiązania pod dany problem, które może być znacznie łatwiejsze do zaimplementowania i prostsze niż SOTA

#### Zaczynaj od prostych modeli
1. Prostsze modele łatwiej i szybciej zdeployować, dzięki c