# Soft link
Do [[Unix file|pliku]] w [[Unix filesystem|systemie unixowym]] możemy stworzyć *soft link* (lub inaczej *symbolic link*)
Pojedynczy plik może mieć więcej niż 1 hard link do niego się odnoszący - oznacza to, że dany plik może mieć więcej niż 1 nazwę.

Komenda:
``` 
ln p1 p2
```
Tworzy hard link `p2` odnoszący się do pliku o ścieżce `p1`. Każda operacja/proces na `p2` będzie odnosiło się do pliku `p1`.
