# Unix file
Pojedynczy plik w systemie [[Unix|Unixowym]] to struktura składająca się z sekwencji bitów, jednakże sam [[Kernel|kernel]] nie interpretuje zawartości plików. W tym celu muszą zostać napisane biblioteki operujące na plikach, zawierające w sobie wyższe poziomy abstrakcji, ale i tak te programy muszą opierać się na tym co oferuje [[Kernel|kernel]]. Jest to podstawowa jednostka w [[Unix filesystem|unixowym systemie plików]]. 

W systemie unixowym jest rozróżnienie pomiędzy zawartością pliku a informacją (metadanymi) o pliku - metadane zawarte są w [[inode]]

**Rodzaje plików w systemie Unixowym**:
1. Normalny plik
2. Folder 
3. [[Soft link|Symbolic link]]
4. [[Block-oriented device file]]
5. [[Character-oriented device file]]
6. [[Pipe]]
7. [[Socket file]]