---
sr-due: 2023-02-16
sr-interval: 60
sr-ease: 187
---

# Interrupts
*Interrupts* to inaczej przerwania [[Process|procesów]] generowane przez procesor. W momencie zatrzymania informacje o stanie procesu zapisywane są w [[Program counter register]], aby móc w przyszłości wznowić proces od momentu stopu. W sytuacji kiedy następuje przerwanie, nie powstaje nowy proces, który to obsługuje, ale [[Kernel control path]], który jest lżejszy niż proces (potrzebuje mniej danych, szybciej działa). *Interrupts* są zarządzanie dzięki [[Interrupts Descriptor Table]] 

Wyróżniamy [[Software interrupts|przerwania softwareowe]] i [[Hardware interrupts|przerwania hardwarowe]] *interrupts*.

Każdy z wyjątków i przerwań ma swój numer - od 0 do 255.

#review