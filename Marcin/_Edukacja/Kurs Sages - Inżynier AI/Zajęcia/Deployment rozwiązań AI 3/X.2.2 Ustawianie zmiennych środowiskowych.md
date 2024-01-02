# Ustawianie zmiennych środowiskowych

Pomysł:

1. Wprost określanie zmiennych środowiskowych
2. Jako ConfigMapa podpinana do. Wady - kiedy jest update config mapy to nie updateuje sie deployment. Rozwiązania: 1) recznie zescaluj rozwiązanie do 0, potem do docelowej wartości, 2) użyj re