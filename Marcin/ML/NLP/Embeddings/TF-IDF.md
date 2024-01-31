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
3. Wysoka waga w tf-idf jest osiągana przez wysoką częstotliwość terminu (w danym dokumencie) i niską częstotliwość terminu w całym zbiorze dokumentów; wagi mają zatem tendencję do odfiltrowywania wspólnych terminów. Ponieważ stosunek wewnątrz funkcji logarytmu idf jest zawsze większy lub równy 1, wartość idf (i tf-idf) jest większa lub równa 0. Gdy termin pojawia się w większej liczbie dokumentów, stosunek wewnątrz logarytmu zbliża się do 1, zbliżając idf i tf-idf do 0.

Przykłady:

1. Dane słowo występuje często w tekście, dużo dokumentów ma te słowo -> najczęściej przyimki, brak cennych informacji

TF wysokie * IDF niskie = TF-IDF niskie

2. Dane słowo występuje rzadko w tekście, dużo dokumentów ma te słowo -> to może być jakieś normalne słowo, ale po prostu ten tekst tego nie zawierał

TF niskie * IDF niskie = TF-IDF niskie

2. Dane słowo występuje rzadko w tekście, mało dokumentów ma te słowo -> to może być jakieś normalne słowo, ale po prostu ten tekst tego nie zawierał

TF niskie * IDF niskie = TF-IDF niskie

#review