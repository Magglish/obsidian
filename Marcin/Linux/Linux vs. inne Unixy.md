# Linux vs. inne Unixy
**[[Linux]] versus inne systemy [[Unix]]owe:**
1. Jego [[Kernel|kernel]] jest [[Monolithic Kernel|monolityczny]], ale oparty o [[Linux kernel module|podejście modułowe]].
2. Pozwala na dynamiczne ładowanie poszczególnych modułów (kawałków kodu) potrzebnych do danej operacji,
3. Używa [[Kernel thread|kernel threading]] w znacznie mniejszym stopniu,
4. W inny sposób zaimplementowane jest [[Linux multithreading|przetwarzanie wielowątkowe]]
5. Jego [[Kernel]] jest [[Preemptive kernel|preemtive]].
6. Wspiera [[Symmetric multiprocessing|symetryczne przetwarzanie wieloprocesorowe]].
7. Wspiera wiele różnych systemów plików dzięki [[Virtual File System Technology|virutal file system technology]].
8. Linux jest zdecydowanie szybszy, poprzez odrzucenie niektórych komponentów zainstalowanych( np. [[STREAMS I/O]]) w innych systemach Unixowych które istotnie mogą go spowolnić.
9. Przez to, że jest open-source, pracować może nad nim każdy z doświadczonych developerów przez co poprawki/nowe featery wychodzą znacznie szybciej i mogą być lepsze niż w innych systemach Unixowych.