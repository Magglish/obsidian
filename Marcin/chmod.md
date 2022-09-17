# chmod
`chmod` służy do nadania uprawnień do plików

Uprawnienia:
1. `r` - czytania
2. `w` - zapisu
3. `x` - uruchomienia
Nadawanie:
1. `-` - zabierz
2. `+` - dodaj
3. `=` - nadaj takie konkretne i zabierz pozostale
Komu:
1. `u` - użytkownikowi
2. `g` - grupie
3. `o` - wszystkim pozostałym
4. `a` - wszystkim (bez rozróżnienia)

Przykłady:
Nadanie uprawnień użytkownikowi
`chmod u+rwx <<NAZWA_PLIKU>>`