# Inversion by surrogate model
Metoda ta polega na wydobyciu poufnych informacji dotyczących modelu, będącego podstawą działania danego systemu ML. 

W tym celu atakujący musi być w stanie, na podstawie odpowiednio przygotowanych danych wejściowych, wygenerować dużą liczbę predykcji za pomocą API, strony internetowej lub aplikacji. Na podstawie otrzymanych wyników oraz użytego wsadu możliwe jest wytrenowanie nowego modelu, który swoim działaniem przypominałby ten wykorzystany we wspomnianym wcześniej systemie. W przypadku bardzo dużej liczby otrzymanych predykcji atakujący jest w stanie wytrenować niemal identyczną replikę. 

Tak spreparowany model może następnie służyć jako podstawa do eksploracji potencjalnie słabych punktów systemu, pozwalających na zamierzone generowanie predykcji (jak w przypadku [[Adversarial attack|adversarial attack]]).