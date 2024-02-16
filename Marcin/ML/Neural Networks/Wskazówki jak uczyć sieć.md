# Wskazówki jak uczyć sieć:

[Źródło 1](https://youtu.be/gYpoJMlgyXA?list=PLkt2uSq6rBVctENoVBg1TpCC7OQi31AlC&t=3606)
1. Puść przypadki przez dopiero co zainicjowaną sieć i spójrz na loss - czy wygląda on OK
2. Weź bardzo mało przypadków i **przeucz sieć na nich** - żeby mieć 100% metryki - jeśli nie jesteś w stanie przeuczyć się do kilku przypadków, to znaczy, że jest jakiś problem z siecią.
3. Optymalizacja hiperaparametrów:
	1. Ogólnie - Na początek mała liczbe epok żeby zobaczyć co może potencjalnie zadziałać a co nie,
	2. Szczegółowo - wtedy puść na większą ilość epok, ale baw się tylko tymi parametrami, które w kroku Ogólnym rokują dobrze
	3. Tip: jeśli loss jest 3 razy większy niż loss "oryginalny", to przerwij szukanie



[Źrodło 2](https://karpathy.github.io/2019/04/25/recipe/)

1. ...

[Źródło 3](https://github.com/google-research/tuning_playbook)

1. ...