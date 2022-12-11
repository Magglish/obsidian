# Docker Union File System

Docker Union File System polega na tym, że tworzona jest iluzja, w której wiele różnych zawartości wielu folderów jest łączona jako jeden folder/struktura ale bez modyfikacji oryginalnych folderów i ich zawartości. 

Dzięki takiemu podejściu, Docker nie musi kopiować tych plików i przechowywać ich w pamięci, a jedynie montuje je u siebie jako właśnie połączenie wszystkich w jednym miejscu ma do nich dostęp do ich odczytania. Natomiast jeśli chcemy zmodyfikować oryginalne pliki to wtedy Docker kopiuje te pliki do swojej najwyższej warstwy i wykonywana jest wtedy ich modyfikacja.