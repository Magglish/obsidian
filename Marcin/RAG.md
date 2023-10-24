# Retrieval Augmented Generation

1. Dostajemy pytanie.
2. Następnie działa Retriever który np. szuka podobnych dokumentów do tego pytania, które mogłyby służyć jako kontekst do znalezienia odpowiedzi - tu możemy maksymalizować recall aby znaleźć jak najwięcej takich dokumentów
3. Potem może działać jakiś Ranker, który wybiera top 5 dokumentów, które mają najwięcej cennych informacji do pytania
4. A potem podajemy to do LLMa, żeby na ich postawie wygenerował odpowiedź.