# Continuous deployment

Continuous deployment to praktyka polegająca na deployowaniu nowego kodu w sposób pełni automatyczny i częsty.

Zamiast deployować jedną wielką paczkę, należy robić to często, kawałek po kawałku. Dzięki temu możemy zaimplementować nowe funkcjonalności szybko oraz zredukować potencjalne problemy, które mogą powstać przy jednym wielkim deployu.

Aby zapewnić stabilność i spójność, continuous deployment musi być zautomatyzowany zgodnie z przyjętmi regułami/zasadami w firmie.

W tym celu szeroko wykorzystywane są [[Container|kontenery]] dlatego że pozwalają na:
1. testy wewnątrz kontenera
2. automatyzacje (budowa -> testy -> deploy)
3. można używać ich w różnych środowiskach, ze względu na swoją przenośność