# Przetwarzanie asynchroniczne


Bardzo ważne: wiedza, którą przekaże odnosi sie do Linuxa. Jak jest w Windowsie? Nie wiem, powiem szczerze nie obchodzi mnie to. 


## Background taski i Light Weight Processes

Background Tasks spawnują Lightweight Processes

1. (Ogólnie) https://stackoverflow.com/questions/200469/what-is-the-difference-between-a-process-and-a-thread
2. (Na linuxie jest troche inaczej) https://stackoverflow.com/questions/10484355/what-is-the-difference-between-lightweight-process-and-thread
3. https://www.thegeekstuff.com/2013/11/linux-process-and-threads/
4. Odpal sobie `ps -o nlwp <<PID_API>>` żeby zobaczyć ile wątków/LWP używa teraz process oraz `watch ps -o thcount <<PID_API>>` aby zobaczyć w czasie rzeczywistym jak to się zmienia 
5. Odpal `htop`, filtruj po `src/` i kliknij `F5 Tree` aby rozwinac do drzewka żeby zobaczyć parent processy i child processy 


## Czy można mieć więcej procesów niż procesorów?

Tak

https://stackoverflow.com/questions/29089282/multiprocessing-more-processes-than-cpu-count

