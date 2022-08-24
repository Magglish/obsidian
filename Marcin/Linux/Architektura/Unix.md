---
sr-due: 2022-09-13
sr-interval: 20
sr-ease: 211
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
#review