# MLOps vs. DevOps

DevOps to zestaw narzędzi i najlepszych praktyk do wdrażania aplikacji na produkcje oraz do unifikacji systemów zarządzania systemami. W założeniach DevOps jest automatyzacja oraz monitoring wszystkich etapów budowy oprogramowania - corem są pipeline'y [[Continuous Integration|CI]]/[[Continuous Deployment|CD]].

MLOps to nic innego jak DevOps zaaplikowany do systemów MLowych, jednak z kikoma różnicami:

1.  W [[Continuous Integration]] oprócz testowania kodu, dochodzi również testowanie danych i modelu,
2. W [[Continuous Deployment]] deploy zakłada nie jedną paczkę, a kilka komponentów - data pipeline oraz model prediction service.

Dochodzą jeszcze etapy unikalne dla ML:

1. [[Continuous Training]] - polegający na ciągłym retrenowaniu modelu na nowszych danych,
2. [[Continuous Monitoring]] - polega na ciągłbym monitorowaniu modelu i reagowaniu na degradację modelu i zmiany w danych.

**Dodatkowe powiązania:**
[[Continuous Integration|CI]]/[[Continuous Deployment|CD]]/[[Continuous Training|CT]]/[[Continuous Monitoring|CM]], [[MLOps Phases]], [[MLOps vs. DevOps]], [[Dojrzałość MLowa]]

**Źródła:**
1. https://cloud.google.com/architecture/mlops-continuous-delivery-and-automation-pipelines-in-machine-learning
