# Soft link
Do [[Unix file|pliku]] w [[Unix filesystem|systemie unixowym]] możemy stworzyć *soft link* (lub inaczej *symbolic link*). Soft links mogą przyjąć dowolną nazwę. Pojedynczy plik może mieć więcej niż 1 soft link do niego się odnoszący.

Komenda:
``` 
ln -s p1 p2
```
Tworzy soft link `p2` odnoszący się do pliku o ścieżce `p1`. Każda operacja/proces na `p2` będzie odnosiło się do pliku `p1`.
