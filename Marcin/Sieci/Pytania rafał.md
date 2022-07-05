**Pytania:**
Jak jest generowany IP? Losowo? Czy jest jakiś pattern?
Potencjalnie jest to DHCP. Ale co jeżeli nie ma DHCP? Jak znajdujesz wolny adres IP?

Jak jest sprawdzane czy nie ma już tego IP zajętego w sieci? 

Czy to jest problem jeżeli są te IP przydzielone do dwóch różnych userów/urządzeń?

Gdyby tak było to co by się stało?

Czy IPv4 może się skończyć? samych IP może być $255^{4}$ i licząc to jeszcze z subnet maskami to tego może być w pyte?
Odp Marcin: Subnety do tego nie służą chyba. Zobacz ip routing table i ip gteway and router configuration

Time to Live w Ipv4 oraz Hop Limit w IPv6. Jak to działa? Czemu jest tam redukcja co przejście paczki przez routing o 1?

W IPv6 header brakuje checksum, a w IPv4 jest. Dlaczego brakuje?