# Learning Rate Scheduling

Scalowanie [[Learning Rate]] w zależności od etapu uczenia.

Przeważnie używane z [[Stochastic Gradient Descent]], [[Stochastic Gradient Descent with Momentum]], [[Nesterov Accelerated Gradient]], rzadziej z [[Adam]] czy [[AdamW]], bo wewnetrzne ich mechanizmy mogą zredukować learning rate w trakcie działania.

Np.:

1. Exponential decay -> najczęściej używane
2. 1/t decay
3. Step reduction - co ileś epok zmniejsz learning rate o daną wartość