---
sr-due: 2022-12-24
sr-interval: 56
sr-ease: 200
---

# Linux multihreading
Linux multithreading ([[Multithreading|przetwarzanie wielowątkowe]]) jest inaczej zaimplementowanie niż w innych systemach Unixowych. Procesy są podzielone na mniejsze części zadania i okreslone jako [[LWP|lightweight processes]] są przetwarzane jako konteksty wykonania i obsługuje za pomocą niestandardowej funkcji `clone()`. 

#review