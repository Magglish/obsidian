# MITM Attack
MITM Attack (*Man-in-the-Middle*) to atak w którym potajemnie przekazuje się i manipuluje się pakietami pomiędzy komunikującymi się użytkownikami i serwerami. Opiera się o aktywny podsłuch sieci i manipulowanie komponentami w niech przesyłanych.

**Sposoby obrony:**
1. Wzmocniona autoryzacja z użyciem [[Certificate Authority]]
2. Badanie opóźnienia sieci w oparciu o badanie sabotażowe - w wyniku akcji wykonywanych w MITM, możemy zaobserwowąć opóźnienia w przekazywaniu danych pomiędzy użytkownikami i serwerami, ze względu na wykonywane operację na przesyłanych danych.
3. [[HTTP Public Key Pinning]] #review