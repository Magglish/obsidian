# Namespaces

Przestrzenie nazw (ang. *namespaces*) pozwalają na wydzielenie/partycjonowanie zasobów w taki sposób, że są one widoczne tylko przez dany proces, a pozostałe nie mogą z tego korzystać.

W linuxie wyróżniamy 6 namespaces: 
1. User - izoluje ważne atrybuty usera, które są istotne z punktu widzenia bezpieczeństwa,
2. IPC, 
3. UTS, Mount, PID, Network. 