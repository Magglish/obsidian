# Continual Learning
Continual Learning oznacza retrenowanie modelu co jakiś określony czas lub co jakąś określona liczbę nowych obserwacji (np. co 1000 obserwacji, co 1 mikro batch). Napewno nie dotyczy to uczenia co jedną nową  obserwację, bo jest to nieefektywne pod względem kosztowym i czasowym.

Continual Learning opiera się o :
1. [[Champion-Challenger approach|Podejście Champion-Challenger]]
2. Wykorzystuje [[Stateless vs statefull training|stateless lub statefull learning]]

Continual learning możemy wykorzystać do:
1. Zniwelowania [[Distribution Shift|data distribution shifts]]
2. Zaadaptowanie modelu do rzadkich przypadków/zdarzeń - np. uczenie modelu na zdarzeniach z ostatnich godzin/minut w trakcie trwania Black Friday, żeby model mógł douczyć się do specyfiki danego dnia.
3. 