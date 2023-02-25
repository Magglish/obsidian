---
sr-due: 2023-04-13
sr-interval: 47
sr-ease: 160
---

# Design by Contract

Design by Contract (DbC) polega na pewnym "kontrakcie" pomiędzy aplikacja/serverem a klientem, który z niego korzysta. Kontrakt w tym przypadku jest pewną abstrakcją dostarczająca zasad jak ma odbywać się komunikacja,

Kontrakt zawiera w sobie:
1. Preconditions - czyli wszelka walidacja, sprawdzenia itd. przed uruchomieniem kodu
2. Postconditions - walidacja, sprawniedza po uruchomieniu kodu.
3. Invariants (*niezmienne*) - czyli to co jest niezmienne w działaniu kodu, czyli jego logika
4. Side effects - jeśli są jakieś

W sytuacji naruszenia kontraktu, rzucane są wyjątki i powinny być na tyle dobrze udokumentowane i zaimplementowane aby było wiadomo co jest nie tak.

#review