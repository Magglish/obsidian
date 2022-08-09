# Unix signals
Unix signals to mechanizm który informuje [[Process|procesy]] o eventach systemowych. Każdy system ma swój własny numer. [[POSIX]] określa około 20 różnych sygnałów.

Proces może zareagować na sygnał w 2 sposoby:
1. Zignorować (wyjątkiem są `SIGKILL` oraz `SIGSTOP`)
2. Asynchronicznie go wykonać za pomocą tzw. *signal handlera*