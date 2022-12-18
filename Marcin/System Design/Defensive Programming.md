# Defensive Programming

Defensive Programming zakłada, że twoja implementacja jest wstanie "obronić się" przed źle podanym inputem do funkcji/serwisu. 

Główna ideą jest to aby odpowiednio wyłapywać błędy i je obsługiwać:
1. wyłapać i odpowiednio zmienić runtime naszego programu
2. rzucić wyjątkiem jeżeli jest to 