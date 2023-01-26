---
sr-due: 2023-03-02
sr-interval: 35
sr-ease: 194
---

# Admission Controllers

![[Admission controllers.png]]

[Admission Controllers](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/) to nic innego jak obiekty/kod, który kontroluje odpytania do [[K8s API Server]].

Mogą walidować i/lub zmieniać odpytania - jego działanie można zobaczyć na przykładzie jakiegokolwiek [[Deployment|deploymentu]], w którym definiujemy pewien zestaw pól, a następnie po wejściu do k8s widzimy, że w danym deploymencie pojawiło się mnóstwo innych dodatkowych pól już wypełnionych - właśnie to zrobił Admission Controller, tzn. zwalidował nasze zapytanie do API i dodatkowo zmutował je odpowiednio, żeby uwzględnić pozostałe niezbędne parametry.

#review