# Unix virtual memory
Unix virtual memory to abstrakcja, która pełni rolę warstwy pomiędzy pamięcia aplikacji a [[Memory Management Unit]]

Zalety:
1. Wiele procesów może być uruchomiona jednocześnie,
2. Jest możliwe uruchomienie procesów wymagających więcej pamięci niż jest to możliwe,
3. Procesy mogą uruchomić program w taki sposób, że tylko część kodu z programu jest ładowana do pamięci, a nie cały,
4. Procesowi można nadać dostęp tylko do pewnego wycinka dostępnej pamięci,
5. Programy mogą być umieszczone w dowolnym miejscu w 