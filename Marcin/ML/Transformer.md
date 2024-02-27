# Transformer:

Oryginalny transformer z paperu [Attention is all you need](https://arxiv.org/abs/1706.03762) to architektura [[Encoder-Decoder]].

![[Transformer Encoder-Decoder.png]]

Różnica jest taka, że:

1. Są tam [[Positional Embeddings|pozycyjne embeddingi]] wskazujące pozycje tekstu.
2. Używany jest [[Multi-Head Self-Attention|mechanizm atencji]]
3. Używane [[Residual Connection]]
4. Używane [[Layer Normalization]]

Wady:

1. $O(n^2d)$ w Transformerze - $n$ długość ciągu, $d$ wymiar embeddinga
2. Problem w określeniu optymalnych [[Positional Embeddings]]