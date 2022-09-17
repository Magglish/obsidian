# Asymmetric cryptography
Asymmetric cryptography (inaczej zwana tez jako *public-key cryptography*) to szyfrowanie, które opiera się o pare kluczy: publiczny klucz oraz prywatny klucz. 
Publiczny klucz może być znany dowolnej osobie, natomiast prywatny tylko jednej konkretnej i musi być trzymany w tajemnicy.

Idea działania jest następująca:
1. Wysyłając wiadomość, szyfruję ją kluczem publicznym adresata (jest on dostępny i nie narusza to zasad bezpieczeństwa)
2. Adresat otrzymuje wiadomość zaszyfrowaną swoim kluczem publicznym przeze mnie
3. Używa w tym celu swoje klucza prywatnego aby sparować go z publicznym i w ten sposób odszyfrowuje wiadomość


Zalety:
1. Zdecydowanie większe bezpieczeństwo

Wady:
2. Stosując asymetryczne szyfrowanie, przesył danych jest znacznie wolniejszy niż w [[Symmetric cryptography|szyfrowaniu symetrycznym]]


#review