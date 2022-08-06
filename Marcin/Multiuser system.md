# Multiuser system
Multiuser system to system, który pozwala na jednoczesne i niezależne uruchamianie aplikacji kilku użytkowników. Jednoczesne oznacza, że rożne aplikacje mogą [[Multiprocessing|działać równolegle]] i korzystać z zasobów CPU, pamięci RAM i dysku. Niezależne oznacza, że dane uruchomienie aplikacji/programu nie ma dostępu do źródeł/wykonania innej aplikacji/programu.

Zaimplementowane w nim musi być:
1. Autoryzacja konkretnych użytkowników (ID użytkownika (UID), login i hasło)
2. Mechanizm ochrony jednej aplikacji przed bugami w drugiej.
3. Mechanizm ochrony jednej aplikacji przed wirusami w drugiej.
4. Mechanizm przyznawający zasoby do odpowiednich userów (miejsce na dysku, własna przestrzeń id), lub pozwalający na [[user groups|współdzielenie zasobów]].
5. [[Process|Procesy]] muszą być [[Preemtable process|wyprzedzające]].