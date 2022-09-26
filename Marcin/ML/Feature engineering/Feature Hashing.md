# Feature Hashing
Feature Hashing to metoda polegająca na zakodowaniu zmiennych kategorycznych z wykorzystaniem [[Hash function|funkcji hashujących]]. 

Definiujemy ile bitów ma mieć przestrzeń (np. 18) co przekłada się na $2^{18}=262144$ wartości hashujących. Następnie, kategorie są kodowane za pomocą indexów od 0 do 262143.

**Wady:**
1. 

**Wykorzystanie:**
Wtedy kiedy mamy problem ze zmiennymi kategorycznymi, w których non stop zmieniają się kategorie z biegiem czasu (dochodzą nowe, stare się dezaktualizują)