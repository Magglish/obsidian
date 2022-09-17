# systemd
systemd to system do zarządzania procesami, urządzeniami, logowaniem do systemu, siecią oraz logowaniem w systemach [[Linux|Linuxowych]]. 

Cechy:
1. Jest to [[Process init|proces inicjujący]] - zatem uruchamiany jest jako pierwszy i wyłączany jako ostatni. 
2. systemd jest jednym z [[Daemons|daemonów]], zatem działa w tle
3. zastąpił [[SysV init]]
4. systemd zarządza procesami poprzez [[cgroups]] a nie poprzez ich [[PID|PIDy]]
5. systemd rozwija [[cgroups]] za pomocą dwóch programów (*systemd-nspawn* oraz *machinectl*) 