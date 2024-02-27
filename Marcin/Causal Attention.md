# Causal/Masked Attention

[[Self-Attention]] patrzy na cały tekst, tzn. patrzy w przyszłość - np. dla [[Language Modeling]] albo [[Next-sentence prediction]] to jest problematyczne, bo w czasie inferencji nie mamy możliwości podejrzenia przyszłości . Rozwiazaniem jest Causal/Masked Attention, w którym attention scores dla "przyszłości" są po prost maskowane za pomocą minus nieskończoności, a potem we wzorze softmax po prostu zamieni to na 0.

![[Causal Attention.png]]