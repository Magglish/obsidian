---
sr-due: 2022-09-21
sr-interval: 4
sr-ease: 130
---

# Unix virtual memory
Unix virtual memory to abstrakcja, opierająca się o [[Address space|address space ale w wersji virtualnej]], która pełni rolę warstwy pomiędzy żądaniem pamięci przez program/proces/aplikacje a [[Memory Management Unit]].

Zalety:
1. Wiele procesów może być uruchomiona jednocześnie,
2. Jest możliwe uruchomienie procesów wymagających więcej pamięci niż jest to możliwe,
3. Procesy mogą uruchomić program w taki sposób, że tylko część kodu z programu jest ładowana do pamięci, a nie cały,
4. Procesowi można nadać dostęp tylko do pewnego wycinka dostępnej pamięci fizycznej,
5. Programy mogą być umieszczone w dowolnym miejscu w pamięci fizycznej,
6. Dzięki temu programiści mogą pisać kod niezależnie od hardwareu i nie przejmować się zarządzaniem pamięcią fizyczną.

#dokoncz
#review