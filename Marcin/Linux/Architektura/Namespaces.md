# Namespaces

Przestrzenie nazw (ang. *namespaces*) pozwalają na wydzielenie/partycjonowanie zasobów w taki sposób, że są one widoczne tylko przez dany proces, a pozostałe nie mogą z tego korzystać.

W [[Linux|Linuxie]] wyróżniamy 6 namespaces: 
1. User - izoluje ważne atrybuty usera, które są istotne z punktu widzenia bezpieczeństwa,
2. IPC - Inter-Process Communications pozwala na to aby wiele różnych procesów z różnych namespaces mogło dzielić się ze sobą informacjami i danymi.
3. UTS - Unix Time Sharing pozwala na to aby ten sam system mógłbyć reprezentowany przez różnego hosta i inna nazwę dla różnych procesów które zachodzą w systemie. Dzięki temu [[Container|kontenery]] moga mieć swoje własne nazwy i używać ich jako ID.
4. Mount - kontroluje punkt montowania systemu plików (ang. *file system mountpoints*) które widoczne są przez kontenery.
5. PID - pozwala na izolacje ID procesów zachodzących w systemie. 
6. Network -  izoluje stack networkingowy, dzieki czemu każdy kontener ma swoje IP, firewalla itd.

 