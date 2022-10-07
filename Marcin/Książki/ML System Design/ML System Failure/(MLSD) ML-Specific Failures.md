# ML-Specific Failures
Znacznie trudniejsze do wykrycia niż [[(MLSD) Software System Failures|software failures]].

#### Dane produkcyjne różnią się od danych treningowych
Podstawowym założeniem w modelach MLowych jest taki, że dane na których model będzie działał na produkcji pochodzą z tych samych rozkładów na których uczył się model. 
Te założenie jest bardzo często naruszalne - dane zmieniają się dynamicznie.

#### Edge cases
W zalezności od tego co model ma robić, edge case mogą go "zabić". Przykładem mogą być modele do autonomicznych aut - nawet jeżeli są one bardziej bezpiecznie niż człowiek, to i tak te pojedyncze przypadki mogą spowodować to, że model nie zostanie wdrożony.
Innym przykładem mogą być modele w medycynie, kontroli ruchu drogowego.

#### Degenerated feedback loops
Modele mogą mieć wpływ na to jak się zachowujemy i co robimy. Przykładem może być np. system rekomendacyjny, który został nauczony na historii użytkowników. Jeżeli teraz system będzie rekomendował Ci częściej A niż B, a Ty będziesz A częściej klikał, to przy kolejnej iteracji budowy modeli, biorąc takie dane są one zbiasowane poprzednim działaniem modelu, innymi słowy: działanie modelu może skrzywiać dane w jakimś "kierunku", a potem te skrzywienie będzie widoczne w kolejnych iteracjach modeli.

Kolejnym przykładem mogą być systemy skanujące CV. Jeżeli dopuszczają oni pewne grono osób, to w kolejnych iteracjach te modele będą zbiasowane konkretnym wyborem kandydatów przez poprzednie modele.