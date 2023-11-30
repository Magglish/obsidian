# Mini-projekt

2 godziny:

1. Raczej odpuszczamy już iteracje związane z docker-hubem - od razu bedziemy pracować na repo w chmurze.
2. Pomysł na iteracje:
	1. zbudować podstawowy Dockerfile, ale zgodnie z poprawnym ułożeniem warstw i użycie jednocześnie ENTRYPOINT z CMD 
	2. postawienie własnego repo w Cloudzie z bazowymi obrazami + budowa obrazu API korzystajac z obrazu bazowego z repo + zdefiniowanie zmodyfikowanych obrazów (redis i postgres)
	3. zdefiniowania docker-compose z 3 obrazami: api, redis i postgres i uruchomienie API z tymi kontenerami