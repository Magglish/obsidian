---
sr-due: 2022-08-16
sr-interval: 1
sr-ease: 178
---

# Zero-Downtime Deployment
**Wcześniej deploy wyglądał tak:**
1. Wyłącz server,
2. Zrób deploy
3. Włącz server

Problem: Usługa niedostepna przez pewien czas.

**Zero-Downtime deployment zakłada:**
1. Uruchomienie [[Container|kontenerów]] z nowym oprogramowaniem
2. Powoli przekierowujemy ruch na nowe kontenery
3. Usuwamy powoli stare kontenery

Zero-downtime deployment możliwy jest z użyciem [[Orchestration|orchestration tools]].
#review