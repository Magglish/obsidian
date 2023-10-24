# Encoder-Decoder

Najczęściej chyba używana w problemie [[Machine Translation]], przynajmniej w ramach rozwiązywania tego problemu poznałem tą architekturę.

Generalnie architektura składa się z 
1. Encodera - który ma za zadanie stworzyć [[Embedding|reprezentację numerczyną]] całego tekstu, który nas interesuje np. chcemy go przetłumaczyć.  Encoder wpuszcza każde słowo po kolei, od początku do końca i liczy dla niego [[Hidden state|stan ukryty]]. Po przetworzeniu całego tekstu otrzymuje ostateczny stan ukryty, który jednocześnie jest inputem do Decodera. Encodery nie są [[Autoregressive|autoregresyjne]]
2. Decodera - którym ma za zadanie z tego stanu ukrytego, który otrzymał od Encodera, zdekodować tą reprezentację numeryczną na tekst np. w innym języku. Czyli przetwarza ten ukryty stan i krok po kroku generuje słowo przetlumaczone. Kończy swoje działanie chyba jak trafi na token, który oznacza koniec zdania. Decodery są [[Autoregressive|autoregresyjne]]