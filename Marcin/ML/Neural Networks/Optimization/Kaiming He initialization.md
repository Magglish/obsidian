# Kaiming/He Initialization

Rozwinięcie [[Xavier Initialization]], ale tak żeby działało z [[ReLU]]

Kaiming/He to to samo co Xavier, ale uwzględnia nieliniowość ReLU i modyfikuje wzór aby podzielić na dwa w mianowniku:

Zdjęcie na dole przedstawia wykresy średniej i odchylenia (wykresy liniowe), a histogram rozkład w poszczególnych warstwach (było ich 10). 

![[Xavier ReLU rozwiazanie.png]]