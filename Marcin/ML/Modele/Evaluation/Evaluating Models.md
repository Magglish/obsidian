# Evaluating Models
Model można zewaluować na różne sposoby:
1. Porównać go do modelu losowego - można go stworzyć jako przewidywanie labelek losowo z tym samym prawdopodobieństwem LUB przewidywanie labelek losowo ale zgodnie z rozkładem jaki jest na zbiorze uczącym.
2. Porównać go do modelu opartego o proste heurystyki - zwracanie najczęściej używanej labelki, jakieś proste reguły na start
3. Porównać go do modelu "ludzkiego" - czyli spróbuj sam ocenić albo niech ekspert stworzy jakiś model/reguły
4. Porównanie do istniejących, obecnych rozwiązań. 

Podczas ewaluacji modeli trzeba odróżnić **dobry system** od **systemu użytecznego**

Sposoby na sprawdzenie modeli:
1. [[Perturbation tests]]
2. [[Invariance tests]]
3. [[Directional expectation tests]]
4. [[Model calibration]]
5. [[Confidence measurement]]
6. [[Slice-based evaluation]]