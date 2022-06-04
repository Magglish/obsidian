# Hamilton
[Hamilton](https://github.com/stitchfix/hamilton) tworzy nowy paradygmat tworzenia featerów. Potrafi stworzyć flow przwtarzania danych, które formułuje [[Directed Acyclic Graph]]. Jego głównymi cechami są łatwe tworzenie featerów, łatwe unit testowanie oraz naturalnie sam dokumentujący się kod.

Zamiast manipulować konkretnym dataframem, skupiasz się na manipulowaniu konkretnymi kolumnami.

Zamiast

```python
df['col_c'] = df['col_a'] + df['col_b']
```