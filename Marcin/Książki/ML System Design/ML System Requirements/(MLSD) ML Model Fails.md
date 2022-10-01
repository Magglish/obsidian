# ML Model Fails
1. Dlatego, że nie spełniamy kryteriów teoretycznych, które są w modelu którego używamy - np. model liniowy do mocno nieliniowych danych
2. Kiepska implementacja kodu modelu - np. używamy PyTorcha i zapominamy aby wyłączyć aktualizacje gradientów kiedy wykonujemy ewaluację.
3. Kiepski wybór hiperparametrów
4. 