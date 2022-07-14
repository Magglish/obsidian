# Statusy 5xx w HTTP
Serwer informuje klienta o błędzie po stronie serwera, które uniemożliwiają przetworzenie zapytania.

**Najczęściej spotykane statusy:**
1. `500 Internal Server Error` – informacja dla klienta o tym, że serwer znalazł się w stanie, który uniemożliwia poprawne przetworzenie żądania,
2. `502 Bad Gateway` – na początku artykułu wspomniałem o tym, że może być wiele węzłów, które będą przekazywały zapytanie do serwera, który je finalnie obsłuży. Ten status informuje klienta o tym, że jeden z tych pośrednich węzłów dostał błędną odpowiedź od poprzedniego węzła,
3. `503 Service Unavailable` – ten błąd może informować klienta o tym, że serwer jest przeciążony. Ponowna próba może kończyć się poprawną odpowiedzią.

[Lista wszystkich statusów 5xx](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#:~:text=smoothly.%5B28%5D-,4xx%20client%20errors,-404%20error%20on)