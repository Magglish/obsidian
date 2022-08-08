# Linux kernel module
Linux kernel module to podejście zaczerpnięte z systemów [[Microkernel|mikrokernelowych]]. Jest to zestaw funkcji i instrukcji które mogą być podpięte pod lub odpięte od [[Kernel|kernela]] w czasie wykonywania operacji. 

Różni się od modułu w podejściu [[Microkernel|mikrokernelowym]] tym, że moduł nie jest uruchamiany jako oddzielny [[Process|proces]], a jest uruchamiany wewnątrz [[Process|procesu]] w trybie [[Kernel Mode]].

Zalety w stosunku do podejścia w [[Microkernel|mikrokernelach]]
1. To że jest podpinane do kernela kiedy jest potrzebne powoduje, że użycie pamięci może być znacznie zmniejszone
2. Nie ma kosztu kontaktu pomiędzy warstwami, ponieważ podlinkowany moduł jest traktowany tak jakby był wbudowany w kernela.

#review