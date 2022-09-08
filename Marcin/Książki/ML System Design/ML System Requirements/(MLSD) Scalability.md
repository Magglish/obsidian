# Scalability
1. *Scalability* (Skalowalność) oznacza, że system powinien być dostosowywany (najlepiej automatycznie) do jego zużycia.
2. W przypadku modelu ML zużycie może się zwiększyć ponieważ:
	1. Nagle więcej macie zapytań do modelu
	2. Wasz model jest znacznie większy i wymaga więcej pamięci/zasobów itd.
	3. Dodajecie coraz więcej featerów do modelu
3. W skalowaniu w kontekście modeli MLowych nie chodzi tylko i wyłącznie o to aby w ramach zużycia móc zdeployować kolejne kontenery które obsłużą ruch (autoscaling). Do pojęcia skalowania dochodzi również *zarządzanie artefaktami* - inaczej się zarządza 1 modelem, a 1000 modeli. To też jest pewien sposób skalowania modeli - im więcej modeli, tym więcej do monitorowania, do retrenowania, więc musi to być w pewien sposób zautomatyzowane. A zautomatyzowany proces musi reagować na jego zużycie (czy ktoś deployuje 10 model teraz, inny trenuje 100) i to też musi podlegać skalowaniu.