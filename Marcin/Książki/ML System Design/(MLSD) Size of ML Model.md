# Size of ML Model
1. The size of ML models is another challenge. As of 2022, it’s common for ML models
to have hundreds of millions, if not billions, of parameters, which requires gigabytes
of random-access memory (RAM) to load them into memory. However, for now, getting these large models into production, especially on edge
devices, 32 is a massive engineering challenge. Then there is the question of how to get
these models to run fast enough to be useful. An autocompletion model is useless if the time it takes to suggest the next character is longer than the time it takes for you
to type.