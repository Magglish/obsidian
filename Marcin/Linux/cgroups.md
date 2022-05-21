# cgroups
*cgroup* (lub *control groups*) pozwalają na ograniczenie oraz wyizolowanie używanych zasobów przez zachodzące procesy w systemie. cgroups są mylnie określane jako 7 warstwa w [[Namespaces|przestrzeni nazw w Linuxie]]. 

1. blkio - pozwala na ograniczenie procesów I/O
2. cpu - pozwala na ograniczenie zużycia CPU
3. cpuacct - generuje automatyczne reporty o zużyciu CPU
4. cpuset - pozwala na zgrupowanie procesów aby używały danego CPU
5. devices - pozwala na nadawanie/odbieranie uprawnień do użycia konkretnych elementów (ang. *devices*) w systemie.
6. freezer - pozwala na zatrzymanie/wznowienie aktualnie przeprowadzanych procesów - dzięki temu można wysłać sygnał *sigstop* lub *sigkill* do całego [[Container|kontenera]] ubijając w ten sposób wszystko co w nim działa
7. memory - pozwala na ograniczenie zużycia pamięci
8. net_cls - pozwala na nadanie IDków konkretnym paczkom sieciowym (*network packets*) pochodzących z różnych control groups
9. net_prio - pozwala na priorytetyzacje/ograniczenie przesyłu sieciowego przez procesy
