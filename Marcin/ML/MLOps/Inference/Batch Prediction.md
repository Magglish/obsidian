# Batch Prediction
Batch Prediction występuje wtedy kiedy predykcje generowane są co jakiś czas i przechowywane np. w tabelach SQL czy w pamięci i wyciągane wtedy kiedy potrzeba.

Batch prediction może być używane aby "przyspieszyć" czas inferencji, np. poprzez przeliczenie predykcji dla wszystkich użytkowników wcześniej - wtedy podczas działania aplikacji można po prostu wyciągnąc predykcje z bazy. (może to być szczególnie przydatne gdy czas inferencji modeli jest bardzo duża)

![[Batch Prediction.png]]