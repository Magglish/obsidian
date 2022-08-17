# Random Access Memory
Random Access Memory (RAM) 

Cechy:
1. Obecne CPU dzielą pamięć RAM na [[Memory page frame|strony]] 4KB lub 8KB i korzystają z [[Memory page tables]].
2. W związku z tym, że ilośc RAMu jest ograniczone, należy zaimplementować odpowiednie algorytmy balansujące zużycie i przydzielające zasoby biorąc pod uwagę ważność procesów

RAM jest używany w trzech celach:
1. Aby zapewnić wymagania od kernela odnośnie różnych obiektów
2. Aby zapewnić wymagania od procesów
3. Aby usprawnić działanie różnych dysków i urządzeń poprzez cacheowanie

#dokoncz