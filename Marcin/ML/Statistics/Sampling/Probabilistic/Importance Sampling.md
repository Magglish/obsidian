# Importance Sampling
Importance [[Sampling|sampling]] to sposób na stworzenie próbki danych, w sytuacji gdy samplowanie z danych ($P(X)$) jest bardzo kosztowne. Dysponując innym, łatwiejszym rozkładem tych danych  ($Q(X)$), okreslane jako *importance distribution* możemy stworzyć wagi jako: 

$$W = \frac{P(X)}{Q(X)}$$

i wtedy samplowanie obserwacji $x$ z rozkładu $P(X)$ jest tym samym co samplowanie obserwacji $x$ z rozkładu $Q(X)$ gdzie wagą jest właśnie $W$.

Przykładem stosowanie Importance Sampling jest [[Policy-based Reinforcement Learning]]