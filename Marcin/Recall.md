# Recall/Sensitivity

$$Recall = \frac{TP}{TP+FN} $$

Recall inaczej pokrycie - mówi nam o tym, jaki jest udział prawidłowo zaprognozowanych przypadków pozytywnych (TP) wśród wszystkich przypadków pozytywnych (również tych, które błędnie zostały zaklasyfikowane do negatywnych – FN).

Model mówi, że 13 przypadków jest $\hat{Y}=1$, ale spośród tych 20 tylko 13 z nich jest w rzeczywistości $Y=1$ czyli $TP = 13$. W danych z kolei było łącznie 100 przypadków z $Y=1$ zatem skoro model trafił tylko w 13 przypadków ($TP=13$) zatem pozostałe musiały być zaklasyfikowane jako $\hat{Y}=0$, co nie jest prawdą. Zatem 87 pozostałych przypadków to $FN=87$