# Active learning
Active learning polega na tym aby wybierać odpowiednio obserwacje, które warto przekazać do ręcznego anotowania danych. Można połączyć to z podejściem [[Semi-supervision]]. Odpowiedni wybór może być oparty o:
1. prawdopodobieństwa z modelu - obserwacji co do których model nie jest pewny
2. niepewność - obserwacji co do których model nie jest pewny (mierzona inaczej niż prawdopodobieństwo, np. duże odchylenie)
3. niezgodność w predykcji różnych modeli - obserwacje, dla których predykcje różnia się całkowicie od siebie
4. "najlepsze" - które najbardziej mogą zredukować loss