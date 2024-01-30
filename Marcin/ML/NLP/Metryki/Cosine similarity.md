# Cosine similarity

Cosine similiarity to kąt pomiędzy dwoma wektorami w przestrzeni.

$$ 
similarity = 
\cos(\theta) = 
\frac
{\textbf{A} \cdot \textbf{B}}
{||\textbf{A}|| ||\textbf{B}||}
=
\frac
	{\sum_{i=1}^n{A_{i}B_{i}}}
	{\sqrt{\sum_{i=1}^nA_{i}^2}\sqrt{\sum_{i=1}^nB_{i}^2}} 
$$


Zastosowanie:
1. Często używany do mierzenia podobieństwa [[Word Embeddings|dwóch tekstów zaprezentowanych jako wektory]] - 
	1. wartość 0 oznacza, że oba wektory są ortogonalne, tzn. prostopadłe i nie ma podobieństwa pomiędzy tymi słowami
	2. wartość 1 ozbacza, że oba wektory są identyczne, tzn. to są te same słowa
	3. wartości z zakresu $(0; 1)$ mierzą zatem podobieństwo pomiędzy dwoma słowami - im wartość bliższa 1, tym słowa są bardziej podobne.