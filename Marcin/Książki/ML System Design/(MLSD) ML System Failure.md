# ML System Failure
1. System MLowy może zawodzić pod dwoma względami:
   1) operacyjnymi - jego latency jest zbyt duże czy throuput jest zbyt mały
   2) jakościowymi - jego zdolności predykcyjne maleją
2. Wykrycie zawdonośći systemu ze względu na powody operacyjne jest proste - rzuca błędami 4xx, 5xx czy po prostu mamy bardzo długi czas oczekiwania na odpowiedź. Jednakże w przypadku modeli MLowych tak nie jest - zdecydowanie ciężej jest ocenić czy dany model właśnie stracił na jakości - dlatego mówi, że się modele MLowe zawodą po cichy (*failing silently*) 