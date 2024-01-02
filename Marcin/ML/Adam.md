# ADAM

Adaptive Moment Estimation - łączy idee z [[RMSProp]] i [[Momentum]]. 

I liczy on learning ratey dla każdego parametru oddzielnie.

1. Tak jak w [[Momentum]], liczy średnią ważoną poprzednich gradientów
2. Tak jak w [[RMSProp]], liczy średnią ważoną z pierwiastków poprzednich gradientów
3. Potem nakłada jakąś poprawkę na te dwa parametry
4. I używa ich potem aby wyliczyć parametr.

Połączenie Momentum z RMSProp daje taki efekt, że jeżeli gradienty są małe to ADAM robi duży krok, a jeżeli gradienty są bardzo duże to ADAM robi mały krok.