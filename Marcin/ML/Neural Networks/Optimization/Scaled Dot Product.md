# Scaled Dot Product

Używany w [[Multi-Head Self-Attention]] aby wspomóc proces uczenia.

![[Scaled Dot Product.png]]

Powodem normalizacji według rozmiaru wymiaru embeddinga jest poprawa wydajności uczenia poprzez unikanie małych gradientów. Na przykład, podczas skalowania w górę wymiaru embeddingów, który jest zwykle większy niż tysiąc dla LLM podobnych do GPT, duże wartości *dot-product* mogą skutkować bardzo małymi gradientami podczas propagacji wstecznej ze względu na zastosowaną do nich funkcję softmax. Wraz ze wzrostem wartości *dot-product* funkcja softmax zachowuje się bardziej jak funkcja krokowa, co skutkuje gradientami bliskimi zeru. Te małe gradienty mogą drastycznie spowolnić proces uczenia się lub spowodować jego stagnację.  