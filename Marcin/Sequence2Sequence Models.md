# Sequence2Sequence Models

Modele Seq2Seq to domyślnie dwie [[RNN|sieci rekurencyjne]] - jedna zakoduje zdanie, drua odkoduje zdanie.

Używane najczęściej w problematyce tłumaczenia maszynowego, ale również w wygenerowaniu podsumowania, dialogu, parsowaniu, code generation

![[Seq2Seq architektura.png]]

![[Training Seq2Seq 1.png]]

![[Training Seq2Seq 2.png]]

Podczas generowania predykcji można zastosować:

1. [[Greedy Decoding]]
2. [[Exhaustive Search Decoding]]