---
sr-due: 2023-03-09
sr-interval: 26
sr-ease: 160
---

# Dependency inversion principle

Dependency inversion principle oznacza, że nasz kod nie powinien adaptować się do zmian zachodzących w innych bilbiotekach/implementacjach, a raczej na odwrót: niech zmiany w tamtym miejscach zaadoptują się do naszego kodu poprzez jakieś [[API]]. 

Przykład dla łatwiejszego zrozumienia

![[Dependency inversion principle.png]]

Gdyby `EventStreamer` zależał wprost od `Syslog` to jakakolwiek zmiana w `Syslog` powodowała by zmianę w naszej klasie `EventStreamer`, czyli metoda `stream` non stop by się zmieniała. Pomysłem jest aby między nimi sworzyć [[Abstract class|klasę abstrakcyjna]] `DataTargetClient`, przez co `Syslog` będzie niejako rozwinięciem/uszczegółowieniem tej klasy abstrakcyjnej. Oczywiście to nie oznacza, że problem ze zmianami w kodzie znikną, on dalej występuje, ale poprzez taką implementację zarządzanie tym wszystkim jest znacznie łatwiejsze. W tym podejściu można też użyć [[Dependency injection]] aby do `EventStreamera` podać jakąś klasę, która ma w sobie metode `send`.

#review
#dokoncz sprawdz w innych zródłach