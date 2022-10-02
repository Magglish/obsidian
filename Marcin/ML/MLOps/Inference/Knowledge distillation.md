# Knowledge distillation
Knowledge distillation to metoda w której mały model (*student*) uczony jest aby naśladować większy model lub [[Ensemble|ensemble]] modeli (*teacher*).

Przykładem jest [[DistilBERT]], który rozmiarowo jest mniejszy o 40%, czas inferencji jest szybszy o 60%, przy czym zachował 97% skuteczności nauczyciela.

**Zalety:**
1. Niezależny od architektury - studentem może być random forest, a teacherem sieć neuronowa.

**Wady:**
1. Potrzebny teacher. W przypadku open-sourceowych, pretrenowanych modeli może to być skuteczna metoda, ale gdy brakuje teachera to jest nie do użycia, bo stworzenie teachera może kosztować nas bardzo dużo czasu i zasobów.