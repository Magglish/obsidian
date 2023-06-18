# API Framework
Frameworki do [[API]] (np. Flask, FastAPI) zbudowane są z poniższych elementów:

![[API Framework.png]]

1. [[HTTP]] request - żadanie od klienta
2. Server [[WSGI]] - obsługujący żadanie i przekazujący do naszej aplikacji
3. [[Router]] który przekaże zapytanie do odpowiedniego endpointa
4. [[Middleware]] które może dodatkowo przetworzyć zapytanie przed jego obsługą przez naszą aplikacje i/lub dodatkowo przetworzyć odpowiedź z naszej aplikacji zanim trafi do klienta
5. [[Widok w API]]

