# Namespace

Namespace w [[Kubernetes]] to mechanizm grupowania pewnych zasobów wewnątrz klastra. 
Nazwy zasobów wewnątrz namespace muszą byc unikalne, ale nie muszą być unikalne wobec pozostałych namespace.
Nie wszystkie rzeczy można grupować w namespace - obiekty *cluster-wide objects* jak np. [[Storage Class]], [[Node]], [[Persistent Volume]] nie są możliwe do grupowania, ale *namespaced obejcts* jak np. [[Pod]], [[Service]], [[Deployment]] już tak.

 