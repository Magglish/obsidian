# Forward vs Reverse proxy

[[Forward proxy|Forward]] vs [[Reverse proxy|Reverse]] [[Proxy|proxy]] 

1. Forward proxy używane jest głównie aby zabezpieczyć użytkowników wewnątrz prywatnej sieci komputerowej, podczas gdy reverse proxy aby zabezpieczyć usługi/server/[[API]].
2. Forward proxy "ukrywa" klienta, który wysłał żądanie, podczas gdy reverse proxy "ukrywa" server, z którego idzie odpowiedź. Dlatego też reverse proxy jest bardziej bezpieczne pod kątem ewentualnych ataków hakerskich. 
3. Reverse proxy dodatkowo zapewnia [[Load Balancing]], co w przypadku forward proxy nie jest potrzebne.
4. W Reverse proxy stosowana jest komunikacja [[TCP IP]], podczas gdy w Forward proxy idzie bezpośrednio z wewnętrznej sieci. 