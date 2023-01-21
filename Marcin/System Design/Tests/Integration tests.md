---
sr-due: 2023-02-07
sr-interval: 17
sr-ease: 200
---

# Integration tests

Testy integracyjne sprawdzają znacznie więcej rzeczy na raz niż [[Unit tests|testy jednostkowe]], np. polączenie z bazą danych, zapis do niej, odczyt, usunięcie i potem zakmnięcie połączenia czyli innymi słowy sprawdzają jak pewne komponenty naszej aplikacji działają w sposób zintegrowany. Są one wolniejsze, wymagają więcej zależności, stąd też uruchamiane są one rzadziej i dopiero np. jak już jest gotowy merge request.

#review