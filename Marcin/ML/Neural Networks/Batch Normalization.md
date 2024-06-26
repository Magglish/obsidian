# Batch Normalization

![[Batch Normalization Example.png]]

![[Batch Normalization in a nutshell.png]]

Sposób na rozwiązanie problemów podczas [[Weight Initialization|inicjalizacji wag]] - chcielbyśmy żeby wartości aktywacji w neuronach były zcentrowane wokół zera, aby uniknąć problemów z ich uczeniem w wyniku [[Weight Initialization|błędnej inicjalizacji wag]] powodującej [[Vanishing Gradient]].

![[Batch Normalization compute 1.png]]

![[Batch Normalization compute 2.png]]

Batch Normalization jest umieszczane po wartswie liniowej lub konwolucyjnej ale jeszcze przed funkcjami aktywacji? ([Andrej Karpathy](https://youtu.be/gYpoJMlgyXA?list=PLkt2uSq6rBVctENoVBg1TpCC7OQi31AlC&t=3186) w swojej lekcji mówi, że przed aktywacją, ale inni, że [po](https://www.reddit.com/r/MachineLearning/comments/67gonq/d_batch_normalization_before_or_after_relu/)

Zalety:
1. Pozwala na większe [[Learning Rate]]
2. Redukuje problem z zależnią uczenia sieci od [[Weight Initialization|inicjalizacji wag]]
3. Działa troche jak regularyzacja (pytanie czy warto używać z [[Dropout]]) bo na dany przypadek $x$ wpływają również statystyki z jego grupy, więc ciężej danej sieci się nauczyć dopasowania do konkretnego przypadku. Ale jest to rzecz też troche niepożądana przez badaczy, dlatego rozwinięto inne normalizacje (np. [[Layer Normalization]], [[Group Normalization]])

Wady:
1. Wydłuża proces uczenia, bo mamy dodatkowe wyliczenia
2. Nie działa na małym batchu
3. Nie działa na batchach, które mają różne długości (przykład w NLP) - wtedy można użyć [[Layer Normalization]] albo [[Group Normalization]]

**Ważne:**

Podczas inferencji (*test time*), nie liczymy batch norma dla batchów testowych, a używamy globalnej średniej i wariancji, która zostałą policzona w trakcie uczenia jako średnia z procesu uczenia (najczęściej za pomocą moving average).




https://www.reddit.com/r/datascience/comments/1aihddg/visualizing_what_batch_normalization_is_and_its/

Czy BatchNorm jest używane w NLP? Czy może Layer Normalization albo Group Normalization?

  

[https://www.reddit.com/r/datascience/comments/1aihddg/comment/kovfrrd/?utm_source=share&utm_medium=web2x&context=3](https://www.reddit.com/r/datascience/comments/1aihddg/comment/kovfrrd/?utm_source=share&utm_medium=web2x&context=3)