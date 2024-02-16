# Xavier Initialization

Jedna ze sposób na [[Weight Initialization"inicjalizacje wag]].

![[Xavier Initialization.png]]

Idea:

1. Tak zainicjować wagi, że wariancja w warstwach była taka sama w każdej warstwie.
2. Wartości wag zależą od ilości inputów do danego neurona - im więcej inputów, tym wagi będą mniejsze, ponieważ więcej przychodzi liczb do twojego neurona ("więcej się dzieje, więc każde zdarzenie ma mniejszą wagę"). I w drugą strone - im mniej inputów, tym wagi większe, bo mniej przycjodzi liczb do neurona ("mniej się dzieje, więc każde zdarzenie ma większa wagę")

Zdjęcie na dole przedstawia wykresy średniej i odchylenia (wykresy liniowe), a histogram rozkład w poszczególnych warstwach (było ich 10). 

![[Xavier Initialization w warstwach.png]]

Widać, że odchylenie spada w dół, dlatego, że [oryginalny paper o Xavier](https://proceedings.mlr.press/v9/glorot10a/glorot10a.pdf) zakładaj 


