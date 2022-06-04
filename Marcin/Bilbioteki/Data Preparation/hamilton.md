# Hamilton
[Hamilton](https://github.com/stitchfix/hamilton) tworzy nowy paradygmat tworzenia featerów. Potrafi stworzyć flow przwtarzania danych, które formułuje [[Directed Acyclic Graph]]. Jego głównymi cechami są łatwe tworzenie featerów, łatwe unit testowanie oraz naturalnie sam dokumentujący się kod.

Zamiast manipulować konkretnym dataframem, skupiasz się na manipulowaniu konkretnymi kolumnami.

Orginalnie

```python
df['col_c'] = df['col_a'] + df['col_b']
```

Z wykorzystaniem Hamiltona:

```python
def col_c(col_a: pd.Series, col_b: pd.Series) -> pd.Series:
    """Creating column c from summing column a and column b."""
    return col_a + col_b
```

Hamilton pozwala na wizualizacje jak używane sa kolumny w procesie tworzenia 