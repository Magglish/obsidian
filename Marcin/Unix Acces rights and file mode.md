# Unix acces rights and file mode
Trzy możliwe prawa dostępu:
1. read
2. write
3. execute

Trzy możliwe tryby plików, które mają znaczenie w kontekście [[Unix file|plików]] możliwych do uruchomienia:
1. `suid` - domyślnie [[Process|proces]] odpalany jest na bazie User ID, jednakże ustawiając flage `suid` możemy odpalić plik korzystająć z ID stworzyciela pliku.
2. `sgid` - domyślnie [[Process|proces]] odpalany jest na bazie [[user groups|user group ID]], jednakże ustawiając flage `sgid` możemy odpalić plik korzystająć z user group ID stworzycieli pliku.
3. `sticky` - 