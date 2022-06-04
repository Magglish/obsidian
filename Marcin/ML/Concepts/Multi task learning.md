# Multi task learning
Jeśli model uczy się kilku tasków, tzn. predykcji więcej niż jednego zdarzenia na raz mówimy wtedy o multi task learningu.

##### Zalety MTL
1. **Modele MTL mogą być mniej przeuczone**, ponieważ im więcej zdarzeń musi jednocześnie przewidywać, tym wiedza którą wykrywa musi być bardziej ogólna/generalizująca na wszystkie zdarzenia. 
2. **Niejawne rozszerzenie danych** (ang. *implicit data augmentation*, bowiem im więcej zdarzeń dany model ma przewidywać, tym więcej danych będzie przetwarzał, dlatego, że dla każdego zdarzenia możemy potrzebować oddzielnych danych. W ten sposób nauczy się bardziej ogólnych/generalizowanych zależności.
3. **Skupienie na istotnych cechach**, które dostarczają najbardziej ogólnych zależności pozwalających na rozwiązanie wszystkich problemów. Może to być szczególnie przydatne dla zdarzeń rzadkich, z małą ilością danych i wielowymiarowych

##### Architektury
1. [[Hard parameter sharing]] (częściej wykorzystywane)
2. [[Soft parameter sharing]]