---
sr-due: 2022-10-03
sr-interval: 9
sr-ease: 240
---

# nc
`nc` (*netcat*) to komenda do operacji wysyłki danych przez  TCP lub UDP. 

Można jej również użyć do sprawdzenia połączenia tak jak [[ping]], jednakże w przypadku nc możemy przetestować czy konkretny port słucha:
`nc -z -v <<ADRES_IP>> <<PORT>>` , gdzie `-z` to zabij proces po poprawnym połączeniu, `-v` od verbose - wyświetl więcej informacji
#review