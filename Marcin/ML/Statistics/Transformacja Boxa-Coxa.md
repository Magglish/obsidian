# Transformacja Boxa-Coxa

Przekształcenie zmiennej numerycznej w taki sposób aby był on jak **najbardziej zbliżony do rozkładu normalnego**.

$$
Y^{( \lambda, c )} (X) = 
    \begin{cases}
      \frac{(X+c)^{\lambda} - 1}{\lambda} & \text{dla } \lambda \neq 0 \\
      \ln (X+c) & \text{dla } \lambda = 0 \\
    \end{cases} 
$$ 

gdzie :

$\lambda$ - parametr transformacji
$c$ - parametr przesunięcia

**Założenia:** $X>0$

**Parametr transformacji** wyznaczany jest w sposób numeryczny, tak aby po przekształceniu rozkładu był on jak najbardziej zbliżony do rozkładu normalnego.
**Parametr przesunięcia** stosowany jest wtedy, gdy niespełnione jest założenie.