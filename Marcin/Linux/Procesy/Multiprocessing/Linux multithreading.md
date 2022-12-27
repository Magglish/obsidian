---
sr-due: 2023-02-24
sr-interval: 60
sr-ease: 200
---

# Linux multihreading
Linux multithreading ([[Multithreading|przetwarzanie wielowątkowe]]) jest inaczej zaimplementowanie niż w innych systemach Unixowych. Procesy są podzielone na mniejsze części zadania i okreslone jako [[LWP|lightweight processes]] są przetwarzane jako konteksty wykonania i obsługuje za pomocą niestandardowej funkcji `clone()`. 

#review