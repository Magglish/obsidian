# Batch Normalization

![[Batch Normalization in a nutshell.png]]

Sposób na rozwiązanie problemów podczas [[Weight Initialization|inicjalizacji wag]] - chcielbyśmy żeby wartości aktywacji w neuronach były zcentrowane wokół zera, aby uniknąć problemów z ich uczeniem w wyniku [[Weight Initialization|błędnej inicjalizacji wag]] powodującej [[Vanishing Gradient]].

![[Batch Normalization compute 1.png]]

![[Batch Normalization compute 2.png]]

**Batch Normalization jest umieszczane po wartswie liniowej lub konwolucyjnej ale jeszcze przed funkcjami aktywacji!**

Zalety:
1. Pozwala na większe [[Learning Rate]]
2. Redukuje problem z zależnią uczenia sieci od [[Weight Initialization|inicjalizacji wag]]
3. Działa troche jak regularyzacja, pytanie czy warto używać z [[Dropout]]
4. 

https://www.reddit.com/r/datascience/comments/1aihddg/visualizing_what_batch_normalization_is_and_its/

Czy BatchNorm jest używane w NLP? Czy może Layer Normalization albo Group Normalization?

  

[https://www.reddit.com/r/datascience/comments/1aihddg/comment/kovfrrd/?utm_source=share&utm_medium=web2x&context=3](https://www.reddit.com/r/datascience/comments/1aihddg/comment/kovfrrd/?utm_source=share&utm_medium=web2x&context=3)