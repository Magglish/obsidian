# ASGI

ASGI (Asynchronous Server Gateway Interace) to standard do obsługi zapytań [[HTTP]] w Pythonie. Jego zadaniem jest uruchomienie aplikacji, przejmowanie wszelkich zapytań [[HTTP]], przetwarzania je w odpowiedni sposób i przekazuje do naszej aplikacji i potem czeka na odpowiedź od naszej aplikacji i wysyła do klienta.

W porównaniu do [[WSGI]], ASGI jest **asynchroniczne** co pozwala na przetwarzanie wielu żądań jednocześnie (np. [uvicorn](https://www.uvicorn.org/), [hypercorn](https://github.com/pgjones/hypercorn))


#review