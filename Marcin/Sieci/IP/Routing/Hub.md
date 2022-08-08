# Hub
Używany do połączenia komputerów w sieć [[LAN]], działa [[OSI Data Link Layer|na warstwie drugiej w modelu OSI]]. 

Urządzenie hub ma w sobie kilka portów, a komputer który chce się podłączyć musi wybrać jeden z portów i fizycznie podpiąć kabel. 

Kiedy przychodzi jakaś paczka danych, to ta paczka danych jest przekazywana **do każdego portu** (czyli de facto każdy komputer ma do niej dostęp) - aby tego uniknąć można zastąpić hub na [[Switch|switch]].

**Jak ubić całą sieć za pomocą Huba?** Podłączyć huba do samego siebie, w efekcie czego tworzymy pewnego rodzaju pętle. Jak przyjdzie paczka danych do Hubu to jest ona wysyłana ponownie do niego. Wtedy znów jest wysyłana paczka danych, bo przyszła i tak w kółko przeciążając całą sieć.
#review