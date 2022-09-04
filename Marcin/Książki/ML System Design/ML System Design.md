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
5. 
