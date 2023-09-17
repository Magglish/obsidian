# Przetwarzanie asynchroniczne


Bardzo ważne: wiedza, którą przekaże odnosi sie do Linuxa. Jak jest w Windowsie? Nie wiem, powiem szczerze nie obchodzi mnie to. 

Obejrzyj: https://www.youtube.com/watch?v=kRy_UwUhBpo&t=1894s

## WSGI vs ASGI

(TE ZDJĘCIE ZRÓB PO SWOJEMU - brakuje na nim jeszcze Reverse Proxy)
![[API Framework.png]]

Obejrzyj: https://www.youtube.com/watch?v=Y1WaF7k07NE&t=1590s

Przeczytaj: [PEP 3333](https://peps.python.org/pep-3333/)

## async def i def

Pomysł na przykład: To w Background tasks niech berzie jeden task wysylajacy na raz dwa requesty do baz danych: jeden do Redisa i jeden do Postgresa

## Background taski - Light Weight Processes i Threads

Background Tasks spawnują Lightweight Processes

1. (Ogólnie) https://stackoverflow.com/questions/200469/what-is-the-difference-between-a-process-and-a-thread
2. (Na linuxie jest troche inaczej) https://stackoverflow.com/questions/10484355/what-is-the-difference-between-lightweight-process-and-thread
3. https://www.thegeekstuff.com/2013/11/linux-process-and-threads/
4. Odpal sobie `ps -o nlwp <<PID_API>>` żeby zobaczyć ile wątków/LWP używa teraz process oraz `watch ps -o thcount <<PID_API>>` aby zobaczyć w czasie rzeczywistym jak to się zmienia 
5. Odpal `htop`, filtruj po `src/` i kliknij `F5 Tree` aby rozwinac do drzewka żeby zobaczyć parent processy i child processy 

Czy istnieje limit threadów? Chyba tak: Fastapi używa run_in_threadpool ze Starlette, a Starlette z kolei `anyio.to_thread.run_sync(func, *args)`. Dokumentacja mówi, że jest [max. 40 threadów](https://anyio.readthedocs.io/en/stable/threads.html#adjusting-the-default-maximum-worker-thread-count) [tutaj gościu miał jakiś problem](https://stackoverflow.com/questions/70927983/fastapi-run-in-threadpool-getting-stuck)

[Zwiększenie limitu z 40 do 100](https://github.com/encode/starlette/issues/1724)

Alternatywa?
(TEN PUNKT JEST DO ZREDAGOWANIA PO POWYŻSZYCH MATERIAŁACH)

Background Taski to naprawdę świetne rozwiązanie. Nie tylko przydają się do takich długich zapisów do baz danych, czy w ogóle jakichś innych operacji. Ale mają również inne zastosowanie. Nasze API obecnie zwraca predykcje z modelu w ciągu 2 milsekund. To szybko. Ale co gdyby nasz model zwracał odpowiedzi w ciągu 2 minut? W przypadku gdy modele generują odpowiedzi bardzo długo, to API projektuje się inaczej. My tego nie bedziemy robić na naszym zjeździe, więc opiszę Wam jak to może wyglądać

1. Można wykorzystać do tego background taski. Tak na prawdę do background tasków dodajemy zadanie związane z wykonaniem predykcji. Natomiast kllientowi, który odpytuje nasze API zwracamy `status_code=202` czyli `Accepted` - informacja dla niego, że jego żądanie zostało zaakceptowane i jest w trakcie przetwarzania oraz w ciele requesta `ID joba`. Następnie w naszym API zdefiniowany jest drugi endpoint typu `GET` np. `statuses`, który może Ci zwrócić informacje o tym, czy dana predykcja została już dla Ciebie przygotowana, np. zwraca status `PENDING` albo `READY` albo `ERROR`. Jeśli jest `READY` to możemy wtedy odpytać ponownie `decisions` typu `GET`, który dla danego `job_id` zwraca Ci predykcje. Te rozwiązanie sprawdza się, wtedy kiedy ilość requestów jest mała, robimy PoCa, żeby sprawdzić czy takie rozwiązanie jest satysfakcjonujące.
2. Natomiast docelowe rozwiązanie, jak już chcemy iść z tym na produkcję na większą skalę, jest już trudniejsze i bardziej angażujące, tutaj już zachaczamy o tematy związane projektowaniu architektury/system design, dlatego, że docelowe rozwiązanie zakłada użycie asynchronicznych kolejek. Tak na prawdę nasze API jest tylko pośrednikiem w komunikacji. Ponieważ w tym rozwiązaniu mamy system kolejkowy oraz oddzielne serwisy odpowiedzialne za przetwarzanie requestów. Proszę spojrzeć na grafikę. To jest nasze API, które jest dostępne dla klientów. Wszelkie requesty działają tak jak wcześniej. Zwracamy klientowi status_code=202 z informacją ACCEPT oraz job_id. Informacja trafia do kolejki - to może być Kafka, PubSub, RabbitMQ czy inne rozwiązania. Za nią stoją już oddzielne serwisy z modelami, które przyjmują zadania wykonania predykcji i jak tylko je wykonają to zapisują swoje wyniki np. w bazie danych, czy w jakimś storage. Nasze API ma z kolei endpoint, tak jak poprzednio, statuses, który sprawdza czy dana predykcja już jest odłożona w bazie, w storage czy też nie. Jeśli jest gotowe, zwraca odpowiedź, a jeśli nie to np. status `PENDING`.
Ten sposób który prezentuje dotyczy case kiedy nasze modele bardzo długo wykonują predykcje. Natomiast te rozwiązanie można również wykorzystać w sytuacji gdy modele zwracają predykcje bardzo szybko, jak np. nasz model w ciągu 2 ms. ALE rozwiązanie z Background Taskami nas nie satysfakcjonuje. Możemy wtedy zastosować ten sam schemat do tego żeby zapisywać dane do bazy danych czy np. logi do plików. Jest zdefiniowana kolejka, która odpowiedzialna jest za zapisywanie rzeczy do baz danych, a my z API wysyłamy do niej tylko requesty z danymi jakimi chcemy żeby zapisała do bazy danych.

## Czy można mieć więcej procesów niż procesorów?

Tak

https://stackoverflow.com/questions/29089282/multiprocessing-more-processes-than-cpu-count

