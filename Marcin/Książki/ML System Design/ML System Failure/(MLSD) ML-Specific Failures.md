# ML-Specific Failures
Znacznie trudniejsze do wykrycia niż [[(MLSD) Software System Failures|software failures]].

#### Dane produkcyjne różnią się od danych treningowych
Podstawowym założeniem w modelach MLowych jest taki, że dane na których model będzie działał na produkcji pochodzą z tych samych rozkładów na których uczył się model. 
Te założenie jest bardzo często naruszalne - dane nie są statycznie, zmieniają się dynamicznie