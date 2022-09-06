---
sr-due: 2022-09-28
sr-interval: 22
sr-ease: 200
---

# Docker Layer
![[Docker layers.png]]

[[Docker image|Obraz dockerowy]] może składać się z kilku warstw - na powyższym obrazku mamy:
1. warstwe pobrania obrazu, na bazie którego tworzymy nasz kontener - *base image Ubuntu 14.04*
2. warstwa zaktualizowania obrazu - `apt-get update`
3. warstwa instalacji pythona3 - `apt-get install python3`

Poniższy rysunek przedstawia pobranie obrazu z docker-hub, który ma w sobie 4 warstwy:

![[Docker layers in CLI.png]]
#dokoncz - czym jest warstwa?
#review