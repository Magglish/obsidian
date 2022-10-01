---
sr-due: 2022-11-09
sr-interval: 39
sr-ease: 250
---

# Reentrant kernel
Reentrant [[Kernel|kernel]] oznacza, że wiele procesów jedncześnie może być w trybie [[Kernel Mode]]. Jest to osiągalne dzięki stosowaniu [[Kernel reentrant function|reentrantnych funkcji kernela]]. Ale taki kernel również może zawierać w sobie [[Kernel nonreentrant function|niereentrantne funkcje kernela]].

Jest to szczególnie przydatne w sytuacji gdy jeden process jest zatrzymywany/wyskakuje błąd - pozostałe wtedy procesy starają się nie być zablokowane. Jest to osiągalne dzięki zaimplementowanej [[Kernel control path|ścieżki postępowania na wypadek takich zdarzeń]]
#review