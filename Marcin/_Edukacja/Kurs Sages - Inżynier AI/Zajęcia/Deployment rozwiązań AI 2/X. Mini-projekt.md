# Mini-projekt

2 godziny:

1. Raczej odpuszczamy już iteracje związane z docker-hubem - od razu bedziemy pracować na repo w chmurze.
2. Pomysł na iteracje:
	1. zbudować podstawowy Dockerfile, ale zgodnie z poprawnym ułożeniem warstw i użycie jednocześnie ENTRYPOINT z CMD 
	2. postawienie własnego repo w Cloudzie z bazowymi obrazami + budowa obrazu API korzystajac z obrazu bazowego z repo + zdefiniowanie zmodyfikowanych obrazów (redis i postgres)
	3. zdefiniowania docker-compose z 3 obrazami: api, redis i postgres i uruchomienie API z tymi kontenerami
	4. zbudowanie jak najmniejszego kontenera - zastosowanie wszystkich best practises
	5. wrzucenie rozwiązania na VMke na chmurze i przetestowanie czy jest dostępne i czy można wysyłać requesty.

Dodatkowe zaawansowane:

6. multistage-building z distroless image - daj im dwie wskazówki: odnośnie symlinka i odnośnie wskazania pythona z naszego środowiska wprost, ale tak żeby pogłówkowali