# Headless service

Headless service to [[Service]], który w ustawieniach ma `clusterIP: None` w efekcie czego nie generuje IP dla service'u i nie dostarcza load balancingu.

Wysyłając requesta do headless service, service nie przekieruje naszego zapytania do jednego z podów. W zamian zwróci Ci listę IPków PODów, z którymi headless service jest powiązany (poprzez `spec.selector`).

Use-casey:

1. Zaawansowany load balancing - headless service zwraca Ci liste podów do których jest podpięty, zatem load balancing można wykonać z poziomu aplikacji - zadecydować do którego PODa wysłać requesta - a nie na poziomie serwisu
2. Zaawansowane health checki - które mogą 