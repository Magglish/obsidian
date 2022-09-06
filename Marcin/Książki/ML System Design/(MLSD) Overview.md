1. "*Machine learning is an approach to (1) learn (2) complex patterns from (3) existing
data and use these patterns to make (4) predictions on (5) unseen data.*"
2. *Patterns* (zależności) są czymś innym niż *distribution* rozkładem - w rzucie kostką znamy rozkład prawdopodobieństwa wylosowania cyferek od 1 do 6, ale nie znamy wzorca tego jak ten rozkład powstał, a to ten wzorzec chcemy poznać.
3. Nawet jeśli modele źle działają, nie oznacza to, że nie ma *patternu* w danych.
4. Jest możliwość odpalenia modelu ML bez danych - continual learning. Takie modele są deployowane i uczone z danych które przychodzą z produkcji. 
   Podejście "fake-it-til-you-make-it" - odpalamy serwis w którym to człowiek wykonuje predykcje, następnie te przykłady są wrzucane do modelu żeby się uczył aby ostatecznie zastąpić człowieka.
5. ML sprawdza się świetnie gdy:
	1. task jest powtarzalny - dlatego, że patterny pojawiają się wielokrotnie w czasie, dzieki czemu łatwo jest je nauczyć
	2. koszt błędnej predykcji jest tani (np. systemy rekomendacyjne) lub gdy koszty błędnych predykcji są wysokie to średni zysk z modeli musi być odpowiednio bardzo duży aby zrekopensować to (np. autonomiczne samochody)
	3. jest "in scale", tzn. model MLowy jest wykorzystywany na dużą skalę, dlatego, że model MLowy jest drogi, więc przy niewielkim wykorzystnaiu po prostu nie będzie się opłacał.
	4. patterny ciągle się zmieniają, przez co takie zhardkodowane rozwiązania nie poradzą sobie z

	2. task is repetitive - when a task is repetitive, each pattern is repeated multiple times, which makes it easier for machines to learn it, 
	3. cost of wrong prediction is cheap (recommendation systems), if high, the average outcome should be big (self-driving cars)
	4. it's at scale - ML systems are costly so they make sens if youre using it a lot(making a lot of predictions, solving a lot of problems)
	5. the patterns are constantly changing - hardcoded solutions in such case can be quickly outdated
6. Most of today’s ML algorithms shouldn’t be used under any of the following conditions:
	1. It’s unethical.
	2. Simpler solutions do the trick.
	3. It’s not cost-effective.
7. However, even if ML can’t solve your problem, it might be possible to break your
problem into smaller components, and use ML to solve some of them. For example,
if you can’t build a chatbot to answer all your customers’ queries, it might be possible
to build an ML model to predict whether a query matches one of the frequently asked
questions. If yes, direct the customer to the answer. If not, direct them to customer
service.
8. For many tasks, a small improvement in performance can result in a huge boost
in revenue or cost savings. For example, a 0.2% improvement in the click-through
rate for a product recommender system can result in millions of dollars increase
in revenue for an ecommerce site. However, for many tasks, a small improvement
might not be noticeable for users. For the second type of task, if a simple model can
do a reasonable job, complex models must perform significantly better to justify the
complexity.
9. ML algorithms don’t predict the future, but encode the past, thus perpetuating the
biases in the data and more. When ML algorithms are deployed at scale, they can
discriminate against people at scale. If a human operator might only make sweeping
judgments about a few individuals at a time, an ML algorithm can make sweeping
judgments about millions in split seconds. This can especially hurt members of
minority groups because misclassification on them could only have a minor effect on
models’ overall performance metrics.