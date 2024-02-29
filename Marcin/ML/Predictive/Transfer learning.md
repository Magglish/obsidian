# Transfer learning
Transfer learning oznacza to, że dany model, który został już nauczony na danym zadaniu jest wykorzystywany w innym zadaniu. 

Przykładem tego są [[Language models|language models]], które nie wymagają labelek (są unsupervised) a następnie tak nauczony model można wykorzystać w pewnych konkretnych taskach (np. analiza sentymentu, wykrywanie intencji itd.) z delikatnym [[Finetuning|fine-tuningiem]].

Transfer-learning stosowane jest zarówno gdy nie mamy za dużo labelek, ale tez wtedy kiedy mam dużo labelek, bo można [[Finetuning|zfinetuningować]] pretrenowany model do naszego taska. 