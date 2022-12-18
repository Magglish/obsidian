# Defensive Programming

Defensive Programming zakłada, że twoja implementacja jest wstanie "obronić się" przed źle podanym inputem do funkcji/serwisu. 

Główna ideą jest to aby odpowiednio wyłapywać błędy i je obsługiwać:
1. wyłapać i odpowiednio zmienić runtime naszego programu:
2. value substitution:
		1. inputować puste inputy domyślnymi poprawnymi wartoścami
		2. zwrócić jakąś domyślną, poprawną wartość zamiast rzucać błędem
3. rzucić wyjątkiem jeżeli jest to przypadek niemożliwy do obsłużenia.

#review