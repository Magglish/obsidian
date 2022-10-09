# Shadow Deployment
Shadow Deployment może być jednym z najbezpieczniejszych testów modelu na produkcji. Polega to na tym, że input jest przekazywany do dwóch modeli jednocześnie - obecnego, działającego na produkcji i potencjalnie nowego, ale reszta działania i podejmowanie decyzji opiera się na modelu działającym na produkcji. Predykcje z potencjalnie nowego są po prostu logowane do dalszych analiz.

**Zalety:**
1. Bezpieczne

**Wady:**
1. Kosztowne, bo muszą działać dwa modele na raz