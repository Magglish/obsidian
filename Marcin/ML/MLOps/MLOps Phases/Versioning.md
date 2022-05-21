# Versioning

Oprócz wersjonowania kodu, ważne jest również wersjonowanie danych oraz modelu. 

W kontekście modeli:
1. Mogą być nauczone na nowych danych
2. Mogą być nauczone bo metodologia się zmieniła
3. Mogą być samo-uczace się
4. Mogą zostać zdeployowane do nowych aplikacji
5. Mogą być przedmiotem ataków i należy je zmienić
6. Modele mogą byc rollbackowane
7. Wymagania formalne/korporacyjne wymagają abyśmy mieli dostęp do wszystkich wersji modeli jakie mieliśmy

W kontekście danych:
1. Dane mogą się zmienić
2. Dane mogą pochodzić z nowych źródeł
3. Właściciel danych moze sie zmienić

**Dodatkowe powiązania:**
[[MLE vs. SWE]], [[Continuous Integration|CI]]/[[Continuous Deployment|CD]]/[[Continuous Training|CT]]/[[Continuous Monitoring|CM]]

**Narzędzia do wersjonowania:**
1. dvc
2. git

**Źródła:**
1. https://ml-ops.org/content/mlops-principles#iterative-incremental-process-in-mlops