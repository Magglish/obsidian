---
sr-due: 2022-09-24
sr-interval: 3
sr-ease: 232
---

# systemd
systemd to system do zarządzania procesami, urządzeniami, logowaniem do systemu, siecią oraz logowaniem w systemach [[Linux|Linuxowych]]. 

Cechy:
1. Jest to [[Process init|proces inicjujący]] - zatem uruchamiany jest jako pierwszy i wyłączany jako ostatni. 
2. systemd jest jednym z [[Daemon|daemonów]], zatem działa w tle
3. zastąpił [[SysV init]]
4. systemd zarządza procesami poprzez [[cgroups]] a nie poprzez ich [[PID|PIDy]]

#review