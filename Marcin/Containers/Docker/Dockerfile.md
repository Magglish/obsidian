---
sr-due: 2023-02-09
sr-interval: 60
sr-ease: 235
---

# Dockerfile
Dockerfile to plik konfiguracyjny, który określa jak ma zostać zbudowany obraz [[Docker|dockerowy]].

Komendy `FROM` oraz `RUN` (**DO POTWERDZENIA W INNYCH ZRODLACH JAKIE KOMENDY W DOCKERFILE TWORZA WARSTWY**) tworzą [[Docker Layer|warstwy]] kontenera. Podczas budowy kontenera, poszczególne kroki tworzona są w ramach *[[Intermediate container|intermediate containers]]*

Przykład ([[Dockerfile commands|komendy]]):

![[Dockerfile.png]]

Tworzy poniższy obraz z 3 warstwami

![[Docker layers.png]]
#review