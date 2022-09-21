---
sr-due: 2022-10-04
sr-interval: 13
sr-ease: 191
---

# Unix
Unix to [[Operating system|system operacyjny]]

Cechy systemów Unixowych:
1. Jest to [[Multiuser system|multiuser system]].
2. System w którym obligatoryjne jest aby stosować [[Kernel Mode|tryb uprzywilejowany (jak stosowany jest w CPU) podczas interakcji aplikacji z hardwarem]].
3. Wprowadza koncepcje [[root user|specjalnego użytkownika/admina]].
4. Jest [[Multiprocessing|wieloprocesorowym]] [[Operating system|systemem operacyjnym]], w którym [[Preemtable process|procesy są wyprzedzające]].
5. Oparte są o [[Process kernel model]].
6. Wszystkie [[Reentrant kernel|kernele unixowe są reentryczne]].
7. Jeśli chodzi o interakcje z hardware'm, w przypadku systemów unixowych aplikacje wysyłają zapytania do systemu operacyjnego czy mogą wykonywać operacje bezpośrednio na hardwarze. Oparte jest to o to czy dany hardware pozwala na taką interakcję. W przypadku CPU, można odróżnić dwa rodzaje interakcji: [[User Mode]] i [[Kernel Mode]].
8. Interesującą cechą systemów Unixowych jest to, że są *"everything is a file"*, oznacza, to że na obiektach w unixie można pracować jak na plikach i stosować popularne wobec nich komendy "plikowe", dlatego, że każdy plik jest opisany przez [[Unix file descriptor|file descriptory]] z [[inode|inodeami]]
#review