# AdaGrad

Jest to [[Stochastic Gradient Descent]] tylko, że akumuluje on gradienty podniesione do kwadratu podczas procesu uczenia i następnie wykorzystuje je aby wyznaczyć lepszy krok w optymalizacji.


Wady:

1. Jeśli długo uczymy nasz model, to te akumulacje w końcu będą zbiegać do zera i proces uczenia się zakończy. Rozwiązanie -> [[RMSProp]]

