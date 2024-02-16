# Learning Rate Scheduling

Scalowanie [[Learning Rate]] w zależności od etapu uczenia.

Przeważnie używane z [[Stochastic Gradient Descent]], [[Stochastic Gradient Descent with Momentum]], [[Nesterov Accelerated Gradient]], rzadko z [[Adam]] czy [[AdamW]], bo w nich learning rate jest cały czas zmieniany

Np.:

1. Exponential decay -> najczęściej używane
2. 1/t decay