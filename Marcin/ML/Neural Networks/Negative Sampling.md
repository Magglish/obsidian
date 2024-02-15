# Negative Sampling

Technika używana w [[Skip Gram]]

Idea:

![[Normalization term w Skip Gram.png]]

Wyliczenie mianownika jest bardzo kosztowne, bo musisz porównać wektor danego słowa z całym korpusem. Zamiast tego uczone są regresje logistyczne między danym słowem, a słowami występujący w kontekście/oknie (?)