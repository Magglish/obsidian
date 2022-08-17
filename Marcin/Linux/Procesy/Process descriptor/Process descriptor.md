---
sr-due: 2022-09-01
sr-interval: 17
sr-ease: 274
---

# Process descriptor
Każdy [[Process|proces]] jest opisany przez *process descriptor*, który zawiera w sobie wszystkie informacje o procesie, np. priorytet, ile alokujemy CPU,  [[Address space|pamięci]] itd. 
1. Process descriptory są trzymane w [[Dynamic memory allocation|dynamicznej pamięci]] ze względu na ich dużą zmienność - jest ich bardzo dużo a ich czas życia może być od nanosekund do miesięcy (wyjątkiem jest [[Process 0]]). 
2. Wszystkie process descriptory są zawarte w [[Process list]].

![[Process descriptor.png]]

Po zakończeniu procesu, zapisywane są w nim informacje o:
1. [[Program counter register]] 
2. [[Stack pointer register]]
3. [[General purpose register]]
4. [[Floating point register]]
5. [[Processor control register]]
6. [[Memory management register]] 
7. [[Hardware context switch]]
Kiedy kernel zdecyduje, że chce wznowić proces, korzysta z powyższych rejestrów aby określić odpowiedni etap/moment wznowienia. 
#review