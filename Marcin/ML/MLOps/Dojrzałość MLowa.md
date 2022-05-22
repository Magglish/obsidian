# Dojrzałość MLowa
Dojrzałością MLowa można określić to jak bardzo zautomatyzowany jest proces budowania i wdrażania modeli MLowych.

Wraz ze wzrostem dojrzałości MLej, proces trenowanie modeli jest bardziej ustrukturyzowany, mniej błędogenny, szybszy i generujący lepsze wyniki.

Wyróżniamy 3 etapi dojrzałości (lub też automatyzacji):

1. **Proces manualny**:
	1. wszystkie etapy procesu budowy modeli (pipeliney) jest ręczny - często w samych Jupyter Notebookach,
	2. Brak [[Continuous Integration|CI]]/[[Continuous Deployment|CD]],
	3. Separacja Data Scientistów od osób, które wdrażają modele - DSi przekazuja model komuś innemu do wdrożenia,
	4. Redeploy/retrenowanie modeli odbywa się rzadko,
	5. Deploy polega tylko na prostym REST API
	6. Brak monitoringu modeli
2. **Automatyzacja pipelineów MLowych**:
	1. Proces uczenia się modelu zautomatyzowany
	2. Walidacja  danych i modelu jest zaimplementowana,
	3. Kod zmodularyzowany, zapisany w skryptach, reużywalny (rezygnacja z Notebookow)
	4. Kod taki sam na developmentcie jak i na produkcji
	5. 
3. **Pełny pipeline [[Continuous Integration|CI]]/[[Continuous Deployment|CD]]/[[Continuous Training|CT]]/[[Continuous Monitoring|CM]]**
	1. Dodatkowo do 2 kroku dochodzi również proces automatycznego testowania, deployowania, monitorowania i przetrenowywania na nowych danych.

**Wizualizacja etapu 3-go**
![[Dojrzałość MLowa.png|600]]

**Źródło:**
1. https://ml-ops.org/content/mlops-principles#iterative-incremental-process-in-mlops