---
sr-due: 2023-01-30
sr-interval: 60
sr-ease: 220
---

# Docker Layer
![[Docker layers.png]]

Warstwa dockera to też jest [[Intermediate container|obraz]], ale bez nadanego taga przez człowieka, a z wygenerowanym dla nich sztucznym IDkiem. Każda instrukcja w [[Dockerfile]] to pojedyncza warstwa. 

Każda kolejna wartw modyfikuje dane poprzedniej warstwy i przechowuje informacje o różnicach pomiędzy nimi. Ale wykorzystujące [[Docker cache|Dockerowego cache'a]] aby nie kopiować redundantych informacji.

Bardzo ważne: **kiedy dana warstwa się zmieni, wszystkie pod nią muszą zostać zbudowane na nowo.**

[[Docker image|Obraz dockerowy]] może składać się z kilku warstw - na powyższym obrazku mamy:
1. warstwe pobrania obrazu, na bazie którego tworzymy nasz kontener - *base image Ubuntu 14.04*
2. warstwa zaktualizowania obrazu - `apt-get update`
3. warstwa instalacji pythona3 - `apt-get install python3`

Poniższy rysunek przedstawia pobranie obrazu z docker-hub, który ma w sobie 4 warstwy:

![[Docker layers in CLI.png]]
#review