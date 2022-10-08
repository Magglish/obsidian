# Addressing Data Distribution Shift
1. [[Continual Learning||Cykliczne retrenowanie modeli]] na nowych danych, jak tylko sie zmieniają.
2. Trenowanie modeli na jak największym zbiorze aby wychwycił wszystkie generalne zalezności i poradził sobie z różnymi zmianami w rozkładach.
3. Bardzo zmienne featery można troche "uspokoić" i np. skategoryzować w jakieś kategorie - zmienna wtedy będzie miała mniejszą moc predykcyjną, ale będzie bardziej stabilna.
4. Można stworzyć kilka modeli, które są dedykowane pod jakieś slice'y z danych, aby zaadresować pewne zmienności typowe dla niektórych grup obserwacji.
5. Możemy wykorzystać podejście [[Continual Learning]] i douczać modele co jakiś czas.