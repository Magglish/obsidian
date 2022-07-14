# HTTP
HTTP (Hypettext Transfer Protocol) [[Protocol|protokół]] [[Text protocol|tekstowy]] służący do wymiany informacji pomiędzy serverem a klientem. 

**Cechy**
1. Komunikacja opiera się na już żądaniach i odpowiedziach
2. Jest bezstanowy - oznacza to tyle, że każde zapytanie może być interpretowane w oderwaniu od pozostałych.

**Metody**
1.  GET – pobranie zasobu wskazanego przez [URI](https://pl.wikipedia.org/wiki/Uniform_Resource_Identifier "Uniform Resource Identifier"), może mieć postać warunkową jeśli w nagłówku występują pola warunkowe takie jak "If-Modified-Since"
2.  HEAD – pobiera informacje o zasobie, stosowane do sprawdzania dostępności zasobu
3.  PUT – przyjęcie danych przesyłanych od klienta do serwera, najczęściej aby zaktualizować wartość [encji](https://pl.wikipedia.org/wiki/Encja_(bazy_danych) "Encja (bazy danych)")
4.  POST – przyjęcie danych przesyłanych od klienta do serwera (np. wysyłanie zawartości formularzy)
5.  DELETE – żądanie usunięcia zasobu, włączone dla uprawnionych użytkowników
6.  OPTIONS – informacje o opcjach i wymaganiach istniejących w kanale komunikacyjnym
7.  TRACE – diagnostyka, analiza kanału komunikacyjnego
8.  CONNECT – żądanie przeznaczone dla serwerów pośredniczących pełniących funkcje tunelowania
9.  PATCH – aktualizacja części danych