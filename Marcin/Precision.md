# Precision

$$Precision = \frac{TP}{TP+FP}$$

Dzielimy liczbę prawidłowo zaprognozowanych pozytywnych wartości (TP) przez sumę wszystkich zaprognozowanych pozytywnie (również tych błędnie zaprognozowanych w ten sposób), czyli TP+FP. W efekcie dowiadujemy się, ile wśród przykładów zaprognozowanych pozytywnie jest rzeczywiście pozytywnych.

Model mówi, że 11 przypadków jest $\hat{Y}=1$, ale spośród tych 11 tylko 10 z nich jest w rzeczywistości $Y=1$ czyli $TP = 10$, a $FP = 1$, zatem precyzja wynosi $precision = \frac{10}{11}=0.919$ .