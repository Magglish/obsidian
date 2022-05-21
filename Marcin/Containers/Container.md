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

**Kontener vs. wirtualna maszyna**
1. Tak jak w przypadku [[Virtual machine|wirtualnych maszyn]], kontenery izolują oprogramowanie w jednym, spójnym środowisku, pozwalając na deploy na wielu różnych środowiskach z gwarancją że działają tak samo.
2. Jesteśmy w stanie umieścić więcej kontenerów niż wirtualnych maszyn w danym środowisku, ze względu na fakt iż wirtualna maszyna potrzebuje w sobie całego, nowego systemu operacyjnego wraz ze wszystkimi jego komponentami, co powoduje znacznie większe zużycie zasobów. W przypadku kontenerów pracują one bezpośrednio na systemie na którym zostały zdeployowane (czyli korzystają z pewnych zasobów tego systemu), ale do pełnego funkcjonowania nie potrzebują całej kopii tego systemu, przez co zużywają znacznie mniej zasobów.

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

**Historia:**

![[Container history.png]]

1970 - zcentralizowane komputery, których zasoby były shareowane innym użytkownikom
1979 - [[Chroot]]
1982 - [[Unix]]
1990 - [[Linux jail command]]
2000 - [[FreeBSD]]
2004 - [[Solaris Containers]]
2006 - [[cgroups]]
2007 - [[LXC]]
2009 - [[Mesos]]
2013 - [[LMCTFY]]
2013/2016 - [[Docker]]
2014/2015 - [[Kubernetes]]