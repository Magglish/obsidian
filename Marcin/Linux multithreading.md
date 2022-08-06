# Linux multihreading
Linux multithreading (przetwarzanie równoległe) jest inaczej zaimplementowanie niż w innych systemach Unixowych. [[LWP|Podzielone na mniejsze części zadania]] są przetwarzane jako konteksty wykonania i obsługuje za pomocą niestandardowej funkcji `clone()`.

W przetarzaniu równoległym dane wykonanie może zostać podzielone [[LWP|na mniejsze części]]