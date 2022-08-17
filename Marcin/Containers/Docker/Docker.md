---
sr-due: 2022-08-18
sr-interval: 1
sr-ease: 160
---

# Docker

![[Docker.png|400]]

Docker to oprogramowanie służące do tworzenia, uruchamiania i zarządzania kontenerami - jest to wrapper wokół [[LXC]]. 

Cechy Dockera:
1. Izoluje aplikacje i wszystkie jej zależności w pojedynczy obiekt zwany [[Container|kontenerem]].
2. Jest zoptymalizowany pod aplikacje,
3. Pozwala na automatyzację budowy kontenerów poprzez umożliwienie definiowania ich jako kod i przekazywania go dalej do [[Docker daemon|servera Dockera]],
4. Pozwala na wersjonowanie kontenerów tak jak git,
5. Kontenery są reużywalne, tzn. jeden konterem może zostać pobrany i uruchomiony w innym kontenerze i wykorzystany w różnych celach,
6. Docker umożliwia shareowanie swoich obrazów poprzez [docker-hub](https://hub.docker.com/).
7. Docker jest open-source.
8. Docker udostepnia [[REST API]] aby móc zintegorwać go z innymi aplikacjami.
9. Serverem uruchomieniowym jest [[Docker daemon]].
#review