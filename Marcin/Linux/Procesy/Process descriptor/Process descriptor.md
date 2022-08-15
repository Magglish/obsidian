---
sr-due: 2022-09-01
sr-interval: 17
sr-ease: 274
---

# Process descriptor
Każdy [[Process|proces]] jest opisany przez *process descriptor*, który zawiera w sobie wszystkie informacje o procesie, np. priorytet, jakie zużywa CPU. [[Address space]] itd.  

Po zakończeniu procesu, zapisywane są w nim informacje o:
1. [[Program counter register]] 
2. [[Stack pointer register]]
3. [[General purpose register]]
4. [[Floating point register]]
5. [[Processor control register]]
6. [[Memory management register]] 
Kiedy kernel zdecyduje, że chce wznowić proces, korzysta z powyższych rejestrów aby określić odpowiedni etap/moment wznowienia. 
#review