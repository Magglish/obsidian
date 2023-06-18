# chmod
`chmod` służy do nadania uprawnień do plików

Uprawnienia:
1. `r` - czytania
2. `w` - zapisu
3. `x` - uruchomienia
4. `s` - inaczej (*suit*)
Nadawanie:
1. `-` - zabierz
2. `+` - dodaj
3. `=` - nadaj takie konkretne i zabierz pozostale
Komu:
1. `u` - użytkownikowi
2. `g` - grupie
3. `o` - wszystkim pozostałym
4. `a` - wszystkim (bez rozróżnienia)

Nadawanie uprawnień skrócone:
0: bez uprawnień 
1: execute
2: write
3: write i execute
4: read
5: read i execute
6: read i write
7: read, write i execute


Przykłady:
Nadanie uprawnień użytkownikowi
`chmod u+rwx <<NAZWA_PLIKU>>`
Odjęcie wszystkich uprawnień wszystkim 
`chmod a-rwx <<NAZWA_PLIKU>>`
Nadanie uprawnien uzytkownikowi, grupie i pozostalych
`chmod 760 <<NAZWA_PLIKU>>`
#review