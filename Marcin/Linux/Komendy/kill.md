---
sr-due: 2022-10-10
sr-interval: 10
sr-ease: 242
---

# kill
Komenda `kill` pozwala nam na ubicie procesów lub wysłanie różnych sygnałów do procesów:

**Przykładowe użycie**

`kill -9 <<PID>>` - ubicie konkretnego procesu (można go znaleźć po komendzie [[ps]])

`kill s HUP <<PID>>` - wysłanie sygnału reloadu procesu (po to żeby np. nie ubijać go, a chcemy żeby wczytał na nowo konfigurację)
#review