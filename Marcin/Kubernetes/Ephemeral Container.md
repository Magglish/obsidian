---
sr-due: 2023-01-12
sr-interval: 4
sr-ease: 197
---

# Ephemeral Container

Ephemeral [[Container]] to specjalny typ kontenera, który może zostać uruchomiony wewnątrz [[Pod|Poda]] aby móc wykonać pewne operacje. Głównie używany w celu sprawdzenia czegoś lub debugowania a nie budowania aplikacji.

Ephemeral container wstrzykuje się w Poda i używane są w sytuacji debugowania Poda, który natywnie takiej opcji nie ma, w szczególności w [[Distroless image]] albo gdy kontener w Podzie się crashuje i musimy sprawdzić o co chodzi. Istotne: wstrzyknięty ephemeral container ma uprawnienia [[root user|roota]], więc możemy robić wszystko.

#review