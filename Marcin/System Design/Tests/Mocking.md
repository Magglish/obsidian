# Mocking

Mocking to technika w [[Testy w oprogramowaniu|testowaniu]] polegająca na "zastąpieniu" danego serwisu/bazy danych wersją tymczasową, używaną tylko w testach. Ma to na celu nie tworzenie połączeń z produkcyjnymi serwisami, co mogłoby doprowadzić do jakichś problemów, wyższych kosztów, spowolnienia działania produkcyjnej aplikacji. Często w tym celu można skorzystać z implementacji, które dostarczają bilbioteki do testowania ([unittest](https://docs.python.org/3/library/unittest.mock.html), czy [pytest](https://docs.python.org/3/library/unittest.mock.html)) lub skorzystać z [[Container|kontenerów]]  np. [Testcontainers](https://docs.python.org/3/library/unittest.mock.html) do zastąpienia np. połączenia bazy danych lub innego produkcyjnego serwisu.

