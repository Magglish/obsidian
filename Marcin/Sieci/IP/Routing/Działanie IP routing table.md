# Działanie IP routing table
![[IP routing table final.png]]

**Działanie [[IP routing table]]:**
1. Otrzymujemy jakąs informację do konkretnego IP. 
2. Sprawdzany jest **góry do dołu, wiersz po wierszu** IP table poszukując tego konkretnego IP i danego subnetu i gateway dla niego.
3. Dla przykładu pierwszy wiersz z Network Destination $165.132.9.0$ oraz subnet mask $255.255.255.128$ oznacza, że wielkość tego subnetu wynosi 128 IP adresów zatem będą to adresy $165.132.9.0 ~ 165.132.9.127$. Jeżeli chcemy wysłać jakąś paczkę do adresów z tego przedziału, wtedy mamy informację o Gateway IP $165.132.9.126$ oraz o porcie nr $1$.
4. Jeżeli to nie były te IP do przechodzimy do drugiego wiersza  z Network Destination $165.132.9.128$ oraz subnet mask $255.255.255.224$ oznacza, że wielkość tego subnetu wynosi 32 IP adresów zatem będą to adresy $165.132.9.128 ~ 165.132.9.159$. Jeżeli chcemy wysłać jakąś paczkę do adresów z tego przedziału, wtedy mamy informację o Gateway IP $165.132.9.158$ oraz o porcie nr $2$.
5. Natomiast jeżeli żaden rekord nie pasuje to wtedy ruch przekierowywany jest do Internetu (ostarni rekord). I w tym przypadku mamy zgodność, dlatego, że subnet mask wynosi $0.0.0.0$ czyli akceptuje każde IP (*all pass subnet mask*) i otrzymujemy Gateway IP $165.132.15.58$ i port nr $4$.

#review