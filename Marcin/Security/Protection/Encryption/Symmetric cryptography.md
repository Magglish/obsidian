---
sr-due: 2022-10-02
sr-interval: 8
sr-ease: 241
---

# Symmetric cryptography
Symmetric cryptography opiera się o szyfrowanie kluczem, który zarówno adresat i odbiorca je posiada. 

Zalety:
1. Klucze są mniejsze niż w [[Asymmetric cryptography|szyfrowaniu asymetrycznym]], więc lepsze są w przypadku bulk encryption - zajmują mniej rozmiaru przez co transfer danych jest szybszy

Wady:
1. Wystarczy, że uda nam sie zdobyć klucz od odbiorcy lub nadawcy i jesteśmy w stanie odszyfrować wiadomość.

Można połączyć szyfrowanie symetryczne z [[Asymmetric cryptography|asymetrycznym]] w ten sposób, że klucz do szyfrowania symetrycznego przekazywany jest w sposób asymetryczny.

#review