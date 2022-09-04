# ML System Design
![[ML System Design.png]]

**Rzeczy z książki są wyciągniete te, które są ciekawe i wczesniej nie znane przeze mnie czy wywołały ciekawą refleksję. Nie mam zamiaru robić streszczenia książki**

##### Chapter 1. Overview of ML
1. "*Machine learning is an approach to (1) learn (2) complex patterns from (3) existing
data and use these patterns to make (4) predictions on (5) unseen data.*"
2. *Patterns* (zależności) są czymś innym niż *distribution* rozkładem - w rzucie kostką znamy rozkład prawdopodobieństwa wylosowania cyferek od 1 do 6, ale nie znamy wzorca tego jak ten rozkład powstał, a to ten wzorzec chcemy poznać.
3. Nawet jeśli modele źle działają, nie oznacza to, że nie ma *patternu* w danych.
4. It’s also possible to launch an ML system without data. For example, in the
context of continual learning, ML models can be deployed without having been
trained on any data, but they will learn from incoming data in production. Without data and without continual learning, many companies follow a “fake-it-
til-you make it” approach: launching a product that serves predictions made by
humans, instead of ML models, with the hope of using the generated data to train
ML models later.
5. ML solutions will especially shine if your problem has these additional following characteristics: 
	1. task is repetitive - when a task is repetitive, each pattern is repeated multiple times, which makes it easier for machines to learn it, 
	2. cost of wrong prediction is cheap (recommendation systems), if high, the average outcome should be big (self-driving cars)
	3. it's at scale - ML systems are costly so they make sens if youre using it a lot(making a lot of predictions, solving a lot of problems)
	4. the patterns are constantly changing - hardcoded solutions in such case can be quickly outdated
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
9. Research usually prioritizes fast training, whereas production usually prioritizes fast inference.
10. If your system always processes one query at a time, higher latency means lower
throughput. If the average latency is 10 ms, which means it takes 10 ms to process
a query, the throughput is 100 queries/second. If the average latency is 100 ms, the
throughput is 10 queries/second.
However, because most modern distributed systems batch queries to process them
together, often concurrently, higher latency might also mean higher throughput.
![[Processing query at a time.png]]

