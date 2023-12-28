# MSE vs. MAE

[[MSE]] vs. [[MAE]]

1. MSE ma większą wartość metryki dla outliersów, MAE taką samą - w efekcie czego modele uczone na MSE mogą mieć większą tendencję do "skupiania" się na outliersach
2. Przy stosowaniu MAE możemy mieć problemy z liczeniem pochodnej
3. MSE używamy kiedy chcemy modelować średnią, a MAE kiedy medianę. Jeżeli spodziewamy się, że zmienna Y ma rozkład zbliżony do normalnego, to wtedy średnia będzie lepszym estymatorem, mniej obciążonym. W przypadku innych rozkładów, faktycznie można zastanowić się czy użyć MAE.