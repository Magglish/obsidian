# Self-[[Attention mechanism|Attention]]

O self-attention można myśleć jako o spojrzeniu w key-value story:

![[Self-Attention lookup table.png]]

Idea self attention:

1. Każde słowo jest najpierw embeddowane
2. Następnie ztransformuj każdy embedding korzystając z trzech macierzy: Query, Key, Value

![[Pasted image 20240226125844.png]]

3. wylicz podobieńśtwa między każdą parą w Keys i Queries i przepuść przez softmax.

![[Pasted image 20240226125954.png]]

4. Policz output dla każðego słowa jako ważona suma wartośći:

![[Pasted image 20240226130031.png]]


