# Low-Rank Adaptiation of Large Launguage Models

Założenie LORy jest takie, że różnica między macerzami wag modelu pretrenowanego a modelu zfinetuningowego na dany task może być aproksymowana inną macierzą i ta inna macierz może mieć znacznie mniejszy wymiar niż wymiary oryginalnych marzeczy wag tych modeli. W dodatku ta mniejsza macierz może być przedstawiona jako jeszcze dwie mniejsze macierze.

Działa to tak, że wagi modeli pretrenowanego są zamrażane. A w trakcie finetuningu tak na prawdę nie uczymy całego modelu, tylko te dwie mniejsze macierze. W efekcie czego nasze modele mają mniejsze wymagania jeśli chodzi o obliczenia i mogą też szybciej się uczyć.

![[LoRA.png]]