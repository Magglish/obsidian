---
sr-due: 2022-11-01
sr-interval: 56
sr-ease: 268
---

# Nagłówki w HTTP
**Cechy**:
1. Nagłówki dołączane są przez klienty do wysyłanych zapytań i przez serwery do wysyłanych odpowiedzi. 
2. Mają one postać `nazwa-nagłówka: wartość-nagłówka`. 
3. Wielkość liter w wartości nagłówka może mieć znaczenie, zależy to od aplikacji.
4. Nagłówki wykorzystywane są do przesyłania metadanych na temat zasobów. Mogą zawierać na przykład informacje o formacie, statusie odpowiedzi czy dacie.

**Najczęściej spotykane nagłówki:**

1. `Accept` - Klient informuje serwer o tym jaki format jest w stanie zrozumieć, może to być na przykład JSON: `application/json`
2. `Accept-Encoding` - Klient informuje serwer o tym jakie sposoby kodowania ciała wiadomości rozumie, może być użyty do określenia pożądanego algorytmu kompresji odpowiedzi
3. `Access-Control-Allow-Methods` - W odpowiedzi na zapytanie typu [[OPTIONS]] serwer informuje jakie inne czasowniki HTTP są dozwolone
4. `Access-Control-Allow-Origin` - Serwer informuje klienta jakie domeny uprawnione są do użycia odpowiedzi
5. `Cache-Control` - Nagłówek służący do zarządzania cache’owaniem. Dotyczy zarówno żądań jak i odpowiedzi
6. `Connection` - Zawiera informacje na temat połączenia pomiędzy klientem a serwerem
7. `Content-Encoding` - Serwer informuje klienta o sposobie kodowania ciała wiadomości
8. `Content-Type` - Odpowiednik nagłówka `Accept` wysyłany przez serwer informujący o formacie odpowiedzi
9. `Cookie` - Nagłówek służący do przesłania ciasteczka przez klienty do serwera
10. `Date` - Zawiera datę mówiącą o czasie wygenerowania żądania/odwiedzi
11. `ETag` - Zawiera identyfikator zasobu zwróconego przez serwer. Używany przez cache
12. `Host` - Zawiera domenę, do której wysyłane jest żądanie
13. `Location` - Zawiera informacje o położeniu zasobu, może być użyty na przykład przy przekierowaniach i tworzeniu nowych zasobów
14. `Server` - Serwer informuje klienty jakiego oprogramowania używa do obsługi odpowiedzi
15. `Set-Cookie` - Nagłówek służący do ustawienia ciasteczka
16. `User-Agent` - Nagłówek dołączany do zapytania informujący o tym jaki klient został użyty do jego wysłania

#review