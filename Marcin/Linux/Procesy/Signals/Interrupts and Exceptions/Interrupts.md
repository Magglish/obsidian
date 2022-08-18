# Interrupts
*Interrupts* to inaczej przerwania [[Process|procesów]] generowane przez procesor. W momencie zatrzymania informacje o stanie procesu zapisywane są w [[Program counter register]], aby móc w przyszłości wznowić proces od momentu stopu. W sytuacji kiedy następuje przerwanie, nie powstaje nowy proces, który to obsługuje, ale [[Kernel control path]], który jest lżejszy niż proces (potrzebuje mniej danych, szybciej działa).

Wyróżniamy [[Synchronous interrupts|synchroniczne/wyjątki]] i [[Asynchronous interrupts|asynchroniczne/przerwania]] *interrupts*.