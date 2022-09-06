# Unix memory management
1. [[Unix]] memory management opiera się o o abstrakcje zwaną [[Unix virtual memory]].
2. [[Unix process management|Kiedy tworzone jest dziecko, z rodzica]] kopiowane są [[Memory page frame|strony pamięci]] w trybie *read-only*. Ale jeśli tylko chcą dokonać jakichś zmian (czy to rodzic, czy dziecko), to tworzona jest nowa [[Memory page frame|strona]] w tym celu i na niej jest dokonywana modyfikacja.

#dokoncz