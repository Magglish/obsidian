1. [[User Mode]] vs. [[Kernel Mode]]
Kiedy jest używany de facto user mode? Z definicji, kernel mode jest potrzebny aby wykonywac operacje na hardwarze. Ale de facto wszystko jest wykonywane na hardwarze. Otwarcie pliku w Linuxie to de facto interakcja z bitami zapisanymi na dysku, więc potrzebny jest Kernel Mode. Jakiekolwiek operacje wykorzystują CPU i RAM więc de facto też potrzebują hardware do zadziałania. Jakie są operacje typowo User Mode?

2. [[Multithreading]] a [[Multiprocessing]].
Nie łapie jeszcze różnicy pomiędzy tymi pojęciami. My w ML używamy pojęcia multiprocessing. 

3. Pytanie o [[One-to-Many NAT]]
Jak wiemy do której osoby wysłać plik, skoro pod jednym adresem IP jest wiele osób. Jak to jest rozwiązywane?