# Bidirectional RNN

[[RNN|Sieć rekurencyjna]], która czyta tekst z lewej i z prawej, tak aby mieć kontekst przed wystąpieniem danego słowa oraz po wystąpieniu danego słowa.

Działają tylko wtedy kiedy masz dostęp do całego słowa, np. klasyfikacja tekstu, machine translation.

Nie nadają się do [[Language Modeling]], bo przy [[Language Modeling]] masz dostęp tylko do tekstu z lewej.

![[Bidirectional RNN.png]]

![[Bidirectional RNN wzór.png]]