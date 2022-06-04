# Multi task learning
Jeśli model uczy się kilku tasków, tzn. predykcji więcej niż jednego zdarzenia na raz mówimy wtedy o multi task learningu.

##### Zalety MTL
1. **Modele MTL mogą być mniej przeuczone**, ponieważ im więcej zdarzeń musi jednocześnie przewidywać, tym wiedza którą wykrywa musi być bardziej ogólna/generalizująca na wszystkie zdarzenia.
2. **Niejawne rozszerzenie danych**, bowiem im więcej zdarzeń dany model ma przewidywać, tym więcej danych będzie przetwarzał, dlatego, że dla każdego zdarzenia możemy potrzebować oddzielnych danych.  

##### Architektury
1. [[Hard parameter sharing]] (częściej wykorzystywane)
2. [[Soft parameter sharing]]