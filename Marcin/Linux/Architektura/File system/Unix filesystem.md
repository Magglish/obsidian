---
sr-due: 2022-10-06
sr-interval: 19
sr-ease: 290
---

# Unix filesystem
![[Unix filesystem.png]]

System plików Unixa można przedstawić w strukturze drzewiastej, tak jak na obrazku powyżej. 

**Cechy unixowego systemu plików:**
1. Na samej górze mamy [[root directory]]. Podspodem są konkretne foldery.
Maksymalna długość nazwy 255 znaków.
2. Ściezki w systemie unixowym mogą być albo [[absolute path|absolutne]] albo [[relative path|relatywne]].
3. Do plików w systemie unixowym możemy odwoływać się poprzez [[Hard link|hard linki]] lub [[Soft link|soft linki (symbolic links)]]. 

**Znaczenie najważniejszych folderów:**
1. `dev` - miejsce z plikami do *devices*
2. `bin` - pliki binarne zawierające w sobie podstawowe usługi jak np. `ls`, `cp`, `bash`
3. `boot` - pliki do prawidłowego uruchomienia systemu
4. `home` - pliki użytkowników
5. `etc` - systemowe pliki konfiguracyjne i systemowe bazydanych
6. `var` - miejsce z plikami ktore moga zmieniac sie szybko 
7. `tmp` - miejsce z plikami tymczasowymi
8. `lib` - miejsce z systemowymi bilbiotekami

#review