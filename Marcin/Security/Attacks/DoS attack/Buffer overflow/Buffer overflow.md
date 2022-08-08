# Buffer overflow
[[Buffer]] overflow (lub też Buffer overrun) to anomalia, w której program podczas zapisu danych do bufora przekracza granicę bufora i nadpisuje sąsiednie lokalizacje pamięci.

**Sposób obrony:**
1. Losowość układu pamięci
2. Celowe pozostawienie przestrzeni pomiędzy buforami
3. Monitorowanie sytuacji w których następuje przekroczenie granicy bufora i nadpisanie sąsiedznich lokalizacji pamięci. #review