# Degenerated Feedback Loops
Modele mogą mieć wpływ na to jak się zachowujemy i co robimy. Przykładem może być np. system rekomendacyjny, który został nauczony na historii użytkowników. Jeżeli teraz system będzie rekomendował Ci częściej A niż B, a Ty będziesz A częściej klikał, to przy kolejnej iteracji budowy modeli, biorąc takie dane są one zbiasowane poprzednim działaniem modelu, innymi słowy: działanie modelu może skrzywiać dane w jakimś "kierunku", a potem te skrzywienie będzie widoczne w kolejnych iteracjach modeli.

Kolejnym przykładem mogą być systemy skanujące CV. Jeżeli dopuszczają oni pewne grono osób, to w kolejnych iteracjach te modele będą zbiasowane konkretnym wyborem kandydatów przez poprzednie modele.

**Sposoby wykrycia:**
Niestety dopóki model nie działa na produkcji, cięzko będzie wykryć degenerated feedback loop. Ale po wdrożeniu go można:
1. W przypadku systemów rekomendacyjnych - można porównac popularność danych rzeczy po wdrożeniu modelu vs. to co było obserwowane wcześniej. (ale to jeszcze wymaga [większego researchu](https://arxiv.org/abs/2111.09963) jak to się robi)

**Sposoby poprawy**
1. W przypadku systemów rekomendacyjnych:
   1) możemy użyć [randomizacji](https://ieeexplore.ieee.org/document/5680904), tzn. oprócz rekomendowania zawsze najbardziej odpowiednich rzeczy, pokażmy troche losowych.
    2) możemy dodać [[Positonal features]] 