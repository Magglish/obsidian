# TF-IDF

Term Frequency - Inverted Document Frequency - liczy ważność danego słowa/częsti ść wystąpienia danego słowa w tekście, biorąc pod uwagę jednocześnie odpowiednie wyważenie znaczenia lokalne (występowanie w danym analizowanym tekście) i jego znaczenia w kontekście pełnej kolekcji dokumentów.

Term-Frequency - czyli częstość występowania słowa w danym dokumencie. Im częściej dane słowo występuje w dokumencie, tym jest wazniejsze:

$$TF(t,d) = \frac{\text{liczba słów t w dokumencie d}}{\text{liczba wszystkich słów w dokumencie d}}$$

Inverse Document Frequency - odwrotność z liczby dokumentów zawierających słowo. W praktyce IDF jest jeszcze scalowany logarytmicznie o podstawie 2.

$$IDF(t, D) = \log{\frac{\text{liczba wszystkich dokumentów D}}{\text{liczba dokumentów zawierających słowo $t$}}}$$

TF-IDF:

$$ TF-IDF(t, d, D) = TF(t,d) \cdot IDF(t, D)$$

Intuicja:

1. Pomysł za Inverse Document Frequency jest taki, że jeżeli dane słowo występuje we wszystkich dokumentach, to jest po prostu mniej istotne (bo np. jest zwykłym przyimikiem jak "i", "ale", "ponieważ"). IDF mówi o "specyficzność" danego słowa. 
2. Powiązanie TF z IDF daje następującą rzecz: otrzymujemy wagi danego słowa biorąc pod uwagę występowanie tego słowa w danym dokumencie, ale również bierzemy pod uwagę jego występowanie we wszystkich dokumentach. Dzięki temu słowa mniej istotne jak np. przyimki mają znacznie mniejszą wagę niż słowa, które występują znacznie rzadziej, ale niosą konkretną informację.

#review