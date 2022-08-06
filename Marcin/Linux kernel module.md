# Linux kernel module
Linux kernel module to podejście zaczerpnięte z systemów [[Microkernel|mikrokernelowych]]. Jest to zestaw funkcji i instrukcji które mogą być podpięte pod lub odpięte od [[Kernel|kernela]] w czasie wykonywania operacji. 

Różni się od modułu w podejściu [[Microkernel|mikrokernelowym]] tym, że moduł nie jest uruchamiany jako oddzielny [[Process|proces]], a jest uruchamiany wewnątrz [[Process|procesu]] w trybie [[Kernel Mode]].

Zalety:
1. Podejście modularne, łatwe do developmentu
2. Niezależne od platformy, łatwo transferowalne na inne systemy
3. To że jest podpinane do kernela kiedy jest potrzebne powoduje, że użycie pamięci może być znacznie zmniejszone
4. Nie tracimy na czasie 