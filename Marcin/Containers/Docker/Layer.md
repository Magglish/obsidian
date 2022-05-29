# Layer
![[Docker layers.png]]

[[Docker image|Obraz dockerowy]] może składać się z kilku warstw - na powyższym obrazku mamy:
1. warstwe pobrania obrazu, na bazie którego tworzymy nasz kontener - *base image Ubuntu 14.04*
2. warstwa zaktualizowania obrazu - `apt-get update`
3. warstwa instalacji pythona3 - `apt-get install python3`

![[Docker layers in CLI.png]]