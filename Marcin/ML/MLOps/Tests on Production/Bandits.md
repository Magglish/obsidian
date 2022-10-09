# Bandits
Gdy mamy wiele modeli do przetestowania, możemy użyc podejścia podobnego w [[Multi-Armed Bandits]] -  każdy nasz model jest maszyną z której zysk (jakość modelu) jest nieznany. Przekierowywany jest ruch do tego modelu, który teraz wykazuje najlepszą jakosć.

Założenia:
1. Model jest w stanie wykonywać [[Online Prediction|online predictions]].
2. Krótkie feedback loopy aby otrzymać labelki
3. Mechanizm zbierający dane i kalkulujący jakość modeli

Jednakże jest to trudne do zaimplementowania i rzadko kto to stosuje - najczęściej stosowane w praktyce są [[AB Testing|testy A/B]].