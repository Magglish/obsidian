# Model calibration
Model calibration polega na sprawdzeniu czy faktycznie outputowane prawdopodobieństwo odpowiada rzeczywistemu prawdopodobieństwu. Jeżeli nasz model mówi, że dane zdarzenie wystąpi z prawdopodobieństwem 80% to spodziewamy się, że w rzeczywistości również częstości wskazują na prawdopodobieństwo 80%. W tym celu można wykorzystać [krzywe kalibracyjne](https://scikit-learn.org/stable/modules/generated/sklearn.calibration.calibration_curve.html)

**Metody kalibracji:**
1. [[Platt scaling]]
2. 