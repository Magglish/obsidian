# VPN
VPN (Virtual Private Network) służy do zabezpieczania połączenia za pośrednictwem publicznej sieci Wi-Fi, dzięki czemu możesz przeglądać strony z zachowaniem pełnej prywatności.

**Cechy VPN:**
1. zmienia Twój adres IP i maskuje twoją wirtualną lokalizację
2. szyfruje dane
3. chroni urządzenia

**Sposób działania:**
1. Gdy łączysz się z wirtualną prywatną usługą sieciową, uwierzytelnia ona Twojego klienta z [[VPN Server|serwerem VPN]].
2. Następnie serwer stosuje [[Cryptographic Protocol|protokół szyfrowania]] w odniesieniu do wszystkich wysyłanych i otrzymywanych danych.
3. Usługa VPN tworzy [[VPN Tunnel|zaszyfrowany internetowy tunel]]. Zabezpiecza on dane przesyłane między Tobą a miejscem docelowym.
4. Aby zapewnić bezpieczeństwo każdego pakietu danych, VPN umieszcza go w zewnętrznym pakiecie, który jest następnie szyfrowany poprzez [[Encapsulating Security Payload|enkapsulację]]. Dzięki takiemu rozwiązaniu tunel VPN pozwala na zachowanie maksymalnej ochrony danych, a Twoje dane pozostają bezpieczne podczas przesyłania.
5. Gdy dane docierają do serwera, pakiet zewnętrzny jest usuwany w procesie deszyfrowania.
#review