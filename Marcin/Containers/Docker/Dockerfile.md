---
sr-due: 2022-09-06
sr-interval: 11
sr-ease: 195
---

# Dockerfile
Dockerfile to plik konfiguracyjny, który określa jak ma zostać zbudowany obraz [[Docker|dockerowy]].

Komendy `FROM` oraz `RUN` (**DO POTWERDZENIA W INNYCH ZRODLACH JAKIE KOMENDY W DOCKERFILE TWORZA WARSTWY**) tworzą [[Docker Layer|warstwy]] kontenera. Podczas budowy kontenera, poszczególne kroki tworzona są w ramach *[[Intermediate container|intermediate containers]]*

Przykład ([[Dockerfile commands|komendy]]):

![[Dockerfile.png]]

Tworzy poniższy obraz z 3 warstwami

![[Docker layers.png]]
#review