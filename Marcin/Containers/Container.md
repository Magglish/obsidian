---
sr-due: 2022-08-18
sr-interval: 1
sr-ease: 160
---

# Container

Kontener (ang. *container*) to przenośnie oprogramowanie. Jest to technologia, która pozwala na uruchomienie i zdeployowanie oprogramowania na różnych systemach.

**Zalety:**
1. Pozwalają na szybszą adaptację do zmian w środowisku developerskim
2. Pozwalają na automatyzację
3. Zwiększają niezawodność - działają tak samo niezależnie od środowiska
4. W większości przypadków są tańsze niż inne alternatywy
5. Kontenery są lżejsze (zuzywaja malo zasobow), mniejsze (wykorzystaja mnie zasobow) i szybsze (szybko sie deployuja) niż VMki

**Wady:**
1. Mniej elastyczne niż VMki (nie odpalisz kontenera linuxowego na windowsie).
2. Trudniejsze w [[Container orchestration|zarządzaniu]].

**Use cases:**
1. przenośność oprogramowania
2. izolacja
3. skalowanie
4. automatyzacja
5. efektywne wykorzystanie zasobów środowiska w którym działają
6. zapewniają tzw. developer visibility - oznacza to, że środowisko w środku kontenera jest właśnie środowiskiem produkcyjnym. Innymi słowy, to co w dockerze zaimplementujemy, to będzie działać na produkcji. Dzięki temu developerzy można już w procesie tworzenia oprogramowania odtworzyć "produkcję" i sprawdzić jak ich kod będzie tam działał.

**Software:**
1. [[Docker|Docker]]
2. [[Rocket (rkt)|rkt]]
3. [[containerd|containerd]]

#review