---
sr-due: 2023-01-07
sr-interval: 42
sr-ease: 291
---

# Kernel mode
Kernel mode to tryb programu, który pozwala na dostęp do wszystkich funkcjonalności [[Kernel|kernela]]. Jest to tryb, na który dany program jest przełączany gdy potrzebuje czegoś z [[Kernel|kernela]], a po zakończeniu operacji wraca do domyślnego [[User Mode|user mode]]. Program w trybie kernel mode korzysta ze swojej [[Address space|prywatnej przestrzeni]] jak i też z danych i kodu w kernelu.

Kernel Mode stosowany jest głównie w celach zabezpieczeń, np. dany proces (ms word) nie ma dostępu do pamięci innych procesów (np. przeglądarki). Dodatkowo nie musimy myśleć czy nasza aplikacja/kod coś popsuje - jest to obsługiwane odpowiednio przez Kernel.

#review