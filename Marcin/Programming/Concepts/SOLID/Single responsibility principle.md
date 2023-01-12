---
sr-due: 2023-01-22
sr-interval: 10
sr-ease: 191
---

# Single responsibility principle

Single responsibility principle (SRP) (podobnie jak [[Cohesion]] oraz [[Separation of concerns]]) oznacza, że dana implementacja musi być odpowiedzialna za tylko jedną rzecz. 

Jeśli dana klasa spełnia SRP, to znaczy, że robi jedną rzecz i jeżeli wymagane są w niej zmiany to wynikają tylko z jednego powodu. Gdyby było inaczej, tzn. zmieniamy implementację klasy z wielu różnych powodów (może jest to [[God object]]?), to znaczy, że nie spełniony jest SRP i warto zastanowić się czy daną nie wyodrębnić do innej klasy.

#review