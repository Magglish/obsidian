---
sr-due: 2022-08-18
sr-interval: 1
sr-ease: 182
---

# Unix memory management
1. [[Unix]] memory management opiera się o o abstrakcje zwaną [[Unix virtual memory]].
2. [[Unix process management|Kiedy tworzone jest dziecko, z rodzica]] kopiowane są [[Memory page frame|strony pamięci]] w trybie *read-only*. Ale jeśli tylko chcą dokonać jakichś zmian (czy to rodzic, czy dziecko), to tworzona jest nowa strona w tym celu i na niej jest dokonywana modyfikacja.

#review