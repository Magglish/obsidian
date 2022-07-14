# Metoda PUT w HTTP
Metoda PUT: 
1. Żądania typu PUT służą do aktualizacji danego zasobu. 
2. Zgodnie ze specyfikacją ciało wiadomości powinno posłużyć do ustawienia stanu zasobu na serwerze. Zatem w przypadku gdy zasób nie istniał żądanie tego typu powinno go utworzyć. Jeśli zasób istnieje wówczas jego stan powinien być ustawiony na ten przekazany w ciele wiadomości.
3. Główna różnica pomiędzy zapytaniami [[POST]] i PUT polega na sposobie interpretowania ciała wiadomości. W przypadku zapytania typu POST to zasób decyduje jak przetworzyć otrzymaną wiadomość. W przypadku żądania typu PUT otrzymana wiadomość powinna posłużyć do ustawienia wartości zasobu.