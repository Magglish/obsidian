# Ustawianie zmiennych środowiskowych

Pomysł:

1. Wprost określanie zmiennych środowiskowych
2. Jako ConfigMapa podpinana do. Wady - kiedy jest update config mapy to nie updateuje sie deployment. Rozwiązania: 
	1) recznie zescaluj rozwiązanie do 0, potem do docelowej wartości (chyba słabe, lepszy drugi sposób), 
	2) rollout restart (to chyba najlepsze bo idzie rolling update, ale trzeba sprawdzić) 
	3) użyj [Reloadera](https://github.com/stakater/Reloader)