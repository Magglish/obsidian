# Ustawienie wirtualnej maszyny

Instrukcja instalacji maszyn znajduje się [tutaj](https://docs.google.com/document/d/1yi1Vm5G7jP1zBtpe-f4r15-gIx7VIKnJj27dRQ0PEmw)  

Maszyna wirtualna na architekturę **x86_64** znajduje się [tutaj](https://drive.google.com/drive/folders/1ck_usf1Ei4G_LDlZmHyXdF0FsSGriFy9) 

Maszyna wirtualna na architekturę **arm64** znajduje się [tutaj](https://mega.nz/file/L7IUFYKC#8Z2ANTKHAxq0dTu9DWzH824KsS-tv8cf_wGSL_PocLw)


## Wiadomość do uczestników

Rekomendacja z mojej strony jest taka, aby w trakcie zajęć pracować na VMkach, które Wam dostarczyłem. Tam na pewno wszystko będzie działać. Natomiast jeżeli ktoś z Was jednak woli pracować na swoim komputerze:

1.  i **jest to system z rodziny Linux** to może sobie sam doinstalować niezbędne [rzeczy tak jak zostało to zrobione w przypadku VMki](https://github.com/sagespl/inzynier-ai/blob/main/vm/setup/x86_64/setup_vm.sh)
2. W przypadku MacOS - warto spojrzeć na powyższe repo i doinstalować te biblioteki korzystajac z `homebrew`
3. W przypadku Windowsa.... zapomnieć o Windowsie w pracy z ML-em i skorzystać z dostarczonej VMki.

Dla przypomnienia wstawiam instrukcje instalacji i konfiguracji VMek:Instrukcja instalacji maszyn znajduje się tutaj -> [https://docs.google.com/document/d/1yi1Vm5G7jP1zBtpe-f4r15-gIx7VIKnJj27dRQ0PEmw](https://docs.google.com/document/d/1yi1Vm5G7jP1zBtpe-f4r15-gIx7VIKnJj27dRQ0PEmw)  
Maszyna wirtualna na architekturę **x86_64** znajduje się tutaj -> [https://drive.google.com/drive/folders/1ck_usf1Ei4G_LDlZmHyXdF0FsSGriFy9](https://drive.google.com/drive/folders/1ck_usf1Ei4G_LDlZmHyXdF0FsSGriFy9)  
Maszyna wirtualna na architekturę **arm64** znajduje się tutaj -> [https://mega.nz/file/L7IUFYKC#8Z2ANTKHAxq0dTu9DWzH824KsS-tv8cf_wGSL_PocLw](https://mega.nz/file/L7IUFYKC#8Z2ANTKHAxq0dTu9DWzH824KsS-tv8cf_wGSL_PocLw)Zostały przygotowane obrazy pod obie architektury: x86_64 i arm64 - prośba o sprawdzenie jej przed instalacją obrazu.Postawiliśmy na Linuxowy system operacyjny - Ubuntu 22.04 LTS - głównie z czterech powodów:  
1. kontakt z systemem Linuxowym od początku zajęć znacznie ułatwi Wam później pracę z rozwiązaniami wdrożonymi na produkcję, która również opiera się o systemy Linuxowe  
2. bezproblemowa praca z bibliotekami do uczenia maszynowego, w szczególności z bibliotekami do Deep Learningu (PyTorch/Tensorflow)  
3, bezproblemowa praca z różnymi managerami bibliotek do pythona (w szczególności poetry)  
4. i najważniejsze - Ubuntu bazuje na dystrybucji Debian, na bazie której opierają się systemy produkcyjne na których wdrażane są rozwiazania ML. W efekcie czego znacznie łatwiej jest przenieść swoje rozwiązanie, wypracowane lokalnie, na produkcję.Dlatego zalecamy abyście korzystali w trakcie zajęć z udostępnionych przez nas wirtualnych maszyn.Gdyby powstały jakieś wątpliwości/problemy z instalacją maszynek, prośba o zgłoszenie się do mnie na slacku - odpowiem i pomogę we wszystkich kwestiach.