# Unit of Work

Unit of Work pattern stosowany jest głównie w komunikacji z bazami danych. Celem tego patternu jest stworzenie niepodzelnej operacji (atomowej), która musi się cała wykonać bezbłędnie aby zapisały się dane do bazy danych. W przypadku problemów, jest robiony rollback. W tym podejściu mamy gwarancje, że wszystkie operacje które miały się wykonać wykonały się, dzieki czemu unikamy problemu z "pół stanami", bo nam sie coś po drodzę wysypało.

[Przykłądowa implementacja](https://www.cosmicpython.com/book/chapter_06_uow.html)