# Encoder-Decoder

Najczęściej chyba używana w problemie [[Machine Translation]], przynajmniej w ramach rozwiązywania tego problemu poznałem tą architekturę.

Generalnie architektura składa się z 
1. Encodera - który ma za zadanie stworzyć [[Embedding|reprezentację numerczyną]] całego tekstu, który nas interesuje np. chcemy go przetłumaczyć.  Encoder wpuszcza każde słowo po kolei, od początku do końca i liczy dla niego [[Hidden state|stan ukryty]]. Po przetworzeniu całego tekstu otrzymuje ostateczny stan ukryty, który jednocześnie jest inputem do Decodera.
2. Decodera