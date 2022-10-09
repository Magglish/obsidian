# Continual Learning
Continual Learning oznacza retrenowanie modelu co jakiś określony czas lub co jakąś określona liczbę nowych obserwacji (np. co 1000 obserwacji, co 1 mikro batch). Napewno nie dotyczy to uczenia co jedną nową  obserwację, bo jest to nieefektywne pod względem kosztowym i czasowym.

Jak określić świeżość danych? Można sprawdzić to np. w taki sposób jak na obrazku 
- eksperymentalnie i ocenić jak zmienia się jakość modelu w zależności od "świeżości" danych. 
![[Frequency of Retraining Models.png]]
Można też zmodyfikować ten wariant i zostawić początek w "miejscu" i przesuwać prawy.

**Continual Learning opiera się o :**
1. [[Champion-Challenger approach|Podejście Champion-Challenger]]
2. Wykorzystuje [[Stateless vs statefull training|stateless lub statefull learning]]

**Continual learning możemy wykorzystać do:**
1. Zniwelowania [[Distribution Shift|data distribution shifts]]
2. Zaadaptowanie modelu do rzadkich przypadków/zdarzeń - np. uczenie modelu na zdarzeniach z ostatnich godzin/minut w trakcie trwania Black Friday, żeby model mógł douczyć się do specyfiki danego dnia.

**Problemy w Continual learning:**
1. Dostęp do nowych danych - może być wydłużony z racji tego, że muszą one przejść daleką ścieżkę zanim będzie można z nich skorzystać.
2. Labelki - dane można otrzymać szybko, ale w niektórych przypadkach trzeba je [[olabelować|Snorkel]] albo nawet poczekać aż labelki będą dostepne (np. klient musi wykonać jakąś akcje, albo musi się coś zadziać - zakupienie produkty, brak zapłaty itd.). Proces można przyśpieszyć korzystając z [[Stream processing|streamowania]], ale nie jest to takie proste.
3. Ewaluacja modeli - bezpośrednio związana z labelkami. Chcemy szybko updateować model, ale niestety na pewne rzeczy trzeba poczekać. 
4. Działanie algorytmów - nie wszystkie algorytmy mogą douczać się na nowych danych.