# Heap overflow
[[Heap]] overflow to jeden z typów [[Buffer overflow]]:
1. Wykorzystywany jest w [[Dynamic memory allocation|dynamicznej alokacji pamięci]] aplikacji
2. Heap overflow to przepełnienie bufora, które występuje w obszarze danych sterty.

**Sposoby obrony:**
1. Rozdzielenie kodu i danych aby zapobieć uruchomieniu paczki danych
2. Losowość pozycji heap'a
3. Cykliczne sprawdzanie heap'a #review