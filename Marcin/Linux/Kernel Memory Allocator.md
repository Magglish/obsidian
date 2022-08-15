# Kernel Memory Allocator
Kernel Memory Allocator to podsystem, który stara się spełniać wymagania/requesty do [[Address space|przestrzeni pamięci]] splywające ze wszystkich części systemu - mogą to być rządania od [[Kernel function|kernela]] czy też od [[system calls]] procesów.

Cechy:
1. Jest szybki,
2. Minimalizuje ilość zmarnowanej/nieużywanej pamięci
3. Powinien zredukować problem z [[Memory fragmentation|fragmentaryzacją pamięci]].
4. Współpracuje z innymi [[Unix memory management|systemami zarządzania pamięcią]].