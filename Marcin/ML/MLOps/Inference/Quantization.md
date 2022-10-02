# Quantization
Quantization to metoda polegająca na zredukowaniu bitów użytych do reprezentacji wartości numerycznych, czyli np. rezygnacja z float64 na rzecz float16, czy int8

**Zalety:**
1. Zmniejszenie rozmiaru modeli - redukcja z float64 na float16 oznacza redukcję rozmiaru x4
2. Zwiększenie batch size - ze względu na punkt 1, potrzebujemy mniej pamięci do przetwrzania modelu więć możemy zwiększyć batch size
3. Przyspieszenie modelu - mniejsza precyzja przyspiesza działanie modelu i czas jego inferencji.

**Wady:**
1. Redukując reprezentacje liczb, ograniczasz liczby jakie mogą się pojawić - liczby spoza zakresu trzeba albo 0-ować, albo zaokrąglać