---
sr-due: 2022-12-05
sr-interval: 49
sr-ease: 262
---

# kill
Komenda `kill` pozwala nam na ubicie procesów lub wysłanie różnych sygnałów do procesów:

**Przykładowe użycie**

`kill -9 <<PID>>` - ubicie konkretnego procesu (można go znaleźć po komendzie [[ps]])

`kill s HUP <<PID>>` - wysłanie sygnału reloadu procesu (po to żeby np. nie ubijać go, a chcemy żeby wczytał na nowo konfigurację)
#review