# Headless service

Headless service to [[Service]], który w ustawieniach ma `clusterIP: None` w efekcie czego nie generuje IP dla service'u i nie dostarcza load balancingu.

Wysyłając requesta do headless service, service nie przekieruje naszego zapytania do jednego z podów. W zamian zwróci Ci listę IPków PODów, z którymi headless service jest powiązany (poprzez `spec.selector`).

Use-casey:

1. Zaawansowany load balancing - headless service zwraca Ci liste podów do których jest podpięty, zatem load balancing można wykonać z poziomu aplikacji - zadecydować do którego PODa wysłać requesta - a nie na poziomie serwisu. Np. request o wadze 10 mb wysłać do poda na lepszym nodzie, a request o wadze 100 kb do poda na gorszym nodzie.
2. Zaawansowane health checki - które mogą sprawdzić jak szybko dana odpowiedź jest zwracana. 9 podów zwraca odpowiedź w ciągu 1 sekundy, a 1 pod w ciągu 20 sekund. W związku z tym można przekierować ruch do tych co działają szybciej.
3. Zarządzanie IPkami i dnsami - potrzebne w [[Statefulset]] 