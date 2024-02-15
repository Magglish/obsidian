# Negative Sampling

Technika używana w [[Skip Gram]]

Idea:

![[Normalization term w Skip Gram.png]]

Wyliczenie mianownika jest bardzo kosztowne, bo musisz porównać wektor danego słowa z całym korpusem. Zamiast tego uczone są regresje logistyczne między danym słowem, a słowami występujący w kontekście/oknie.

![[Pasted image 20240215103047.png]]

Czyli podczas funkcji kosztu, bierzemy wszystkie słowa, które występują w kontekście ORAZ wysamplowane słowa ze słownika, które nie są w kontekście - dzięki temu mamy mniej do policzenia.