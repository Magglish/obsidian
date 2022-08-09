---
sr-due: 2022-08-12
sr-interval: 3
sr-ease: 256
---

# Monolithic kernel vs microkernel
[[Monolithic Kernel]] vs [[Microkernel]]:

1. Mikrokernel jest wolniejszy od monolithic, ponieważ przekazywanie informacji pomiędzy dobudowanymi warstwami w mikrokernelu ma swój koszt.
2. Dzięki temu, że konkretne warstwy w mikrokernelu są rozdzielane, stosowane jest modularne podejście co ułatwia w utrzymaniu kodu oraz warstwy muszą być od siebie niezależne i mieć odpowiednie API.
3. Mikrokernele są łatwiejsze w przenoszeniu pomiędzy systemami ze względu na wyziolowane warstwy oprogramowania.
4. Mikrokernel lepiej używa pamięć RAM.

Jednak większość tych różnic jest usuwana w Linuxie na skutek zastosowania [[Linux kernel module|podejścia modułowego]].
#review