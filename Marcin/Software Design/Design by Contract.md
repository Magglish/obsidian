# Design by Contract

Design by Contract (DbC) polega na pewnym "kontrakcie" pomiędzy aplikacja/serverem a klientem, który z niego korzysta. Kontrakt w tym przypadku jest pewną abstrakcją dostarczająca zasad jak ma odbywać się komunikacja,

Kontrakt zawiera w sobie:
1. Preconditions - czyli wszelka walidacja, sprawdzenia itd. przed uruchomieniem kodu
2. Postconditions - walidacja, sprawniedza po uruchomieniu kodu.
3. Invariants - 