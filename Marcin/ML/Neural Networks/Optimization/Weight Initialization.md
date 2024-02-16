# Weight Initialization

Sposoby na inicjalizacje wag w sieciach neuronowych na początku.

Jak nie inicjować warstw:
1. Nie warto inicjować **tą samą wartością**, bo każdy neuron będzie tak samo działał.
2. **Małe losowe** wartości też nie bo przy wielu warstwach w sieci, im głębsza sieć, tym aktywacje w neuronach są coraz bliższe 0. W efekcie czego otrzymasz problem z [[Vanishing Gradient]]
3. 