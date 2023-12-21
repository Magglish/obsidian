# Kiedy nie potrzebujesz Kubernetesa

1. Kiedy nie potrzebujesz autoskalowania
2. Twoje aplikacje sa bardzo małe i uruchomienie ich np. na 1 VMce jest w zupełności wystarczające
3. Kubernetes bazuje na kontenerach, a nie wszystkie aplikacje moga byc stworzone pod kontenery bo np. zakladają, że jeszcze w tle coś działa np. cron-job, a z definicji w kontenerach powinna dzialać jedna usługa. Wiec czasami przepisanie takich aplikacji aby nadawały się do kontenerów może być tak czasochłonne i kosztowne, że lepiej pozostać przy obecnej architekturze opartej o uruchamianie kodu/binarek na VMkach
4. Kiedy masz ogarnięte bardzo dobrze VMki i sam nimi zarządzasz i np. stosujesz dodatkowe technologie, które mogą skupiać się tylko na autoskalowaniu (np. grupy autoskalujące na GCPie)