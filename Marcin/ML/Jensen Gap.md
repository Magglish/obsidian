# Jensen Gap

Wiecie, że jak się transformuje zmienną celu w problemie regresji i na niej modeluje, a potem dokonuje się transformacji odwrotnej, żeby dostać predykce w oryginalnej skali, to się rozjeżdża średnia predykcja ze średnia z wartości prawdziwych? Wynika toz nierównosci Jensena, bo f(EX) <= Ef(X) dla funkcji wypukłych. Jak teraz o tym myślę, to jest to elementarna i ważna sprawa i nawet miałem na studiach tę nierówność, nie pamiętałem o tym i teraz mnie ktoś uświadomił... [https://towardsdatascience.com/mind-the-jensen-gap-c54e0eb9e1b7](https://towardsdatascience.com/mind-the-jensen-gap-c54e0eb9e1b7)

  

o kurde  

  

nie znałem tego równania

  

na przykładzie z tego artykułu, czy dobrze rozumiem, że zawsze taka transformacja a potem ODtransformacja powoduje, że predykcje będą mniejsze? i w efekcie możemy zobaczyć problem z niedoszacowywaniem?

  

jeżeli używasz przekształcenie wklęsłego, a odwrotne jest wypułe (a tak zawzwycza jest) to tak  

  

czyli jeśli modelujesz pierwiastek a potem bierzesz kwadrat albo modelujesz log i potem bierzesz exp

#dokoncz