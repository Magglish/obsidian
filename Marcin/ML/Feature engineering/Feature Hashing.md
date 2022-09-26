# Feature Hashing
[Feature Hashing](https://en.wikipedia.org/wiki/Feature_hashing) to metoda polegająca na zakodowaniu zmiennych kategorycznych z wykorzystaniem [[Hash function|funkcji hashujących]]. 

Definiujemy ile bitów ma mieć przestrzeń (np. 18) co przekłada się na $2^{18}=262144$ wartości hashujących. Następnie, kategorie są kodowane za pomocą indexów od 0 do 262143.

**Wady:**
1. Powstają kolizje, tzn. są dwie kategorie które mają ten sam index. Ale [eksperyment z Bookingu](https://booking.ai/dont-be-tricked-by-the-hashing-trick-192a6aae3087), 

**Wykorzystanie:**
Wtedy kiedy mamy problem ze zmiennymi kategorycznymi, w których non stop zmieniają się kategorie z biegiem czasu (dochodzą nowe, stare się dezaktualizują)