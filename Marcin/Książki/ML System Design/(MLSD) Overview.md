1. "*Machine learning is an approach to (1) learn (2) complex patterns from (3) existing
data and use these patterns to make (4) predictions on (5) unseen data.*"
2. *Patterns* (zależności) są czymś innym niż *distribution* rozkładem - w rzucie kostką znamy rozkład prawdopodobieństwa wylosowania cyferek od 1 do 6, ale nie znamy wzorca tego jak ten rozkład powstał, a to ten wzorzec chcemy poznać.
3. Nawet jeśli modele źle działają, nie oznacza to, że nie ma *patternu* w danych.
4. Jest możliwość odpalenia modelu ML bez danych - continual learning. Takie modele są deployowane i uczone z danych które przychodzą z produkcji. 
   Podejście "fake-it-til-you-make-it" - odpalamy serwis w którym to człowiek wykonuje predykcje, następnie te przykłady są wrzucane do modelu żeby się uczył aby ostatecznie zastąpić człowieka.
5. **ML sprawdza się świetnie gdy**:
	1. task jest powtarzalny - dlatego, że patterny pojawiają się wielokrotnie w czasie, dzieki czemu łatwo jest je nauczyć
	2. koszt błędnej predykcji jest tani (np. systemy rekomendacyjne) lub gdy koszty błędnych predykcji są wysokie to średni zysk z modeli musi być odpowiednio bardzo duży aby zrekopensować to (np. autonomiczne samochody)
	3. jest "in scale", tzn. model MLowy jest wykorzystywany na dużą skalę, dlatego, że model MLowy jest drogi, więc przy niewielkim wykorzystnaiu po prostu nie będzie się opłacał.
	4. patterny ciągle się zmieniają, przez co takie zhardkodowane rozwiązania nie poradzą sobie przy takiej zmienności
6. **ML nie sprawdza się gdy**:
	1. istnieją prostsze rozwiązania - nalezy je stosować
	2. nie jest efektywny kosztowo - koszty wdrożenia przekraczają zyski
7. Jeżeli dany problem nie może być rozwiązany przez MLa, spróbuj rozbić go na mniejsze cześci i użyj MLa do tych mniejszych problemów aby je rozwiązać.
8. Jeśli prosty model jest w stanie zrobić dobrą robotę, to za stosowaniem bardziej skomplikowane modeli może być potrzebnych znacznie wiecej argumentów (zasada KISS - Keep It Stupid Simple)
9. Modele MLowe nie przewidują przeszłości, one kodują przeszłość. Uczą się na danych historycznych wzorców i podając do niego przykłady, on zwraca Ci wynik korzystając z zależności których się nauczył. Czyli możemy stosować model tylko wtedy kiedy w przyszłości będą spełnione takie same warunki jak w przeszłości.
10. ML algorithms don’t predict the future, but encode the past, thus perpetuating the
biases in the data and more. When ML algorithms are deployed at scale, they can
discriminate against people at scale. If a human operator might only make sweeping
judgments about a few individuals at a time, an ML algorithm can make sweeping
judgments about millions in split seconds. This can especially hurt members of
minority groups because misclassification on them could only have a minor effect on
models’ overall performance metrics.