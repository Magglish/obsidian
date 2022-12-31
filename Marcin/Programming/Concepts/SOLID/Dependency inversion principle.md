# Dependency inversion principle

Dependency inversion principle oznacza, że nasz kod nie powinien adaptować się do zmian zachodzących w innych bilbiotekach/implementacjach, a raczej na odwrót: niech zmiany w tamtym miejscach zaadoptują się do naszego kodu poprzez jakieś [[API]]. 

Przykład dla łatwiejszego zrozumienia

![[Dependency inversion principle.png]]

Gdyby `EventStreamer` zależał wprost od `Syslog` to jakakolwiek zmiana w `Syslog` powodowała by zmianę w naszej klasie `EventStreamer`, czyli metoda `stream` non stop by się zmieniała. Pomysłem jest aby 