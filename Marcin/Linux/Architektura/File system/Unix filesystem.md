---
sr-due: 2022-08-12
sr-interval: 4
sr-ease: 270
---

# Unix filesystem
![[Unix filesystem.png]]

System plików Unixa można przedstawić w strukturze drzewiastej, tak jak na obrazku powyżej. 

**Cechy unixowego systemu plików:**
1. Na samej górze mamy [[root directory]]. Podspodem są konkretne foldery.
Maksymalna długość nazwy 255 znaków.
2. Ściezki w systemie unixowym mogą być albo [[absolute path|absolutne]] albo [[relative path|relatywne]].
3. Do plików w systemie unixowym możemy odwoływać się poprzez [[Hard link|hard linki]] lub [[Soft link|soft linki (symbolic links)]]. 