# Data Synthesis
Data Synthesis polega na tworzeniu syntetycznych próbek w CV i NLP

**CV:**
Połączenie obserwacji z labelkami zero-jedynkowymi w labelki z liczbami zmienno przecinkowymi:

$$ x' = \gamma x_{1} + (1-\gamma)x_{2}$$

**Ale jest to sposób mocno researchowy, nie potwierdzone w wielu zastosowaniach aby działało**


**NLP:** 

Stworzenie schematu/template'a generowania tekstu np. "*Find me a (CUISINE) restaurant within (NUMBER)
miles of (LOCATION)*" generuje:

1. Find me a Vietnamese restaurant within 2 miles of my office.
2. Find me a Thai restaurant within 5 miles of my home.
3. Find me a Mexican restaurant within 3 miles of Google headquarters