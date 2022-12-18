---
sr-due: 2023-02-16
sr-interval: 60
sr-ease: 273
---

# Layers (w modelach [[OSI Layers|OSI]] i [[TCP IP Layers|TCP]])
Warstwy w modelach OSI i TCP to abstrakcyjne pojęcia (można je uprościć jako dodawanie metadanych do [[IP Packet|paczki danych]]), które pozwalają na podział procesu komunikacji sieciowej na poszczególne warstwy/etapy, co niesie za sobą wiele korzyści:
-   zarządzanie procesem komunikacji w sieci, określanie jej reguł i zadań poprzez [[Protocol|protokoły komunikacyjne]]
-   współdziałanie na poziomie sprzętowym i programowym produktów sieciowych różnych producentów,
-   kontrola poprawności komunikacji.
 
W modelach warstwowych istotne jest to:
1. że warstwa X widzi to co jest pod nią, ale nie tego co nad nią,
2. warstwy liczymy od dołu.
#review