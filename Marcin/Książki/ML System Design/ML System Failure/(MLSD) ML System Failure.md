# ML System Failure
1. System MLowy może zawodzić pod dwoma względami:
   1) [[(MLSD) Software System Failures|operacyjnymi]] - jego latency jest zbyt duże czy throuput jest zbyt mały
   2) [[(MLSD) ML-Specific Failures|jakościowymi]] - jego zdolności predykcyjne maleją
2. Wykrycie zawdonośći systemu ze względu na powody operacyjne jest proste - rzuca błędami 4xx, 5xx czy po prostu mamy bardzo długi czas oczekiwania na odpowiedź. Jednakże w przypadku modeli MLowych tak nie jest - zdecydowanie ciężej jest ocenić czy dany model właśnie stracił na jakości - dlatego mówi, że się modele MLowe zawodą po cichu (*fail silently*) 
3. To że błędy operacyjne nie są typowo MLowe, nie oznacza, że możecie je ignorować. Wręcz przeciwnie, niektóre z nich będą dotyczyć was częściej niż w software developmencie (np. niewystarczająca ilość RAMu, niewystarczająca pamięć na GPU, zależności)
