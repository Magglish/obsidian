# Unix file
Pojedynczy plik w systemie [[Unix|Unixowym]] to struktura składająca się z sekwencji bitów, jednakże sam [[Kernel|kernel]] nie interpretuje zawartości plików. W tym celu muszą zostać napisane biblioteki operujące na plikach, zawierające w sobie wyższe poziomy abstrakcji, ale i tak te programy muszą opierać się na tym co oferuje [[Kernel|kernel]]. Jest to podstawowa jednostka w [[Unix filesystem|unixowym systemie plików]]. 

W systemie unixowym jest rozróżnienie pomiędzy zawartością pliku a informacją (metadanymi) o pliku - metadane zawarte są w [[inode]].

De facto wykonywane operacje na plikach to sięgnięcie po dane zachowane na hardwarze (dysku) stąd też wszelkie operacje wykonywane na plikach są wykonywane w trybie [[Kernel Mode]].
