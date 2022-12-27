# Admission Controllers

![[Pasted image 20221227171405.png]]

[Admission Controllers](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/) to nic innego jak obiekty/kod, który kontroluje odpytania do [[K8s API Server]].

Mogą walidować i/lub zmieniać odpytania - jego działanie można zobaczyć na przykładzie jakiegokolwiek [[Deployment|deploymentu]], w którym definiujemy pewien zestaw pól, a następnie po wejściu do k8s widzimy, że w danym deploymencie pojawiło się mnóstwo innych dodatkowych pól już wypełnionych - właśnie to zrobił Admission Controller, tzn. zwalidował nasze zapytanie do API i dodatkowo zmutował je odpowiednio, żeby uwzględnić pozostałe niezbędne parametry.

#review