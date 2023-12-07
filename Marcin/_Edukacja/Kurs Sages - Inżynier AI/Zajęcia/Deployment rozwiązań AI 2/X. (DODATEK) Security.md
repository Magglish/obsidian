# Security

**Okej to chciałbym porozmawiać z wami o ostatnim temacie,  o Tematach związanych z szerokim pojętym security w kontekście kontenerów. A mówimy sobie cztery najważniejsze aspekty  w kontekście kontenerów

  

1. Zmiana użytkownika,  bo domyślnie w kontenerze mamy uprawnienia roota więc  co pozwala na wszystko.
    
2.  porozmawiamy sobie o tym jak przekazać wszelkie wrażliwe dane typu hasła,  pliki które są w stanie was autoryzować przed chwilą
    
3.  oraz o skanowaniu kontenera pod względem podatności.
    

  
  

 zacznijmy od początku.

  

 wystartujmy sobie jakieś kontener na chwilę:

  

```bash

docker start <<CONTAINER_ID_OR_NAME>>

```

  

A następnie Wejdźmy do niego  i odpalmy sobie Shella:

  

```bash

docker exec -it <<CONTAINER_ID_OR_NAME>> bash

```

  

To powinno się rzucić wam w oczy to to że zobaczcie że nasz Shell zaczyna się od słowa `root`. znacza to że jesteśmy zalogowani na użytkowników `root`,  czyli użytkowników który ma uprawnienia administratorskie i generalnie możemy zrobić kontrolę wszystko.  powiem wam więcej nie tylko wszystko w kontenerze możemy zrobić ale również jeżeli podepniemy sobie Volume do naszego kontenera, to możemy również modyfikować ten folii Oczywiście pod warunkiem że jest on  dodane w trybie ReadWrite. Dodatku tak jak wam Pokazywałem na różnice pomiędzy firmką a kontener,  kontener współdzieli  hardware z naszą komputerem  oraz też  korzysta z funkcji dostępnych w kernelu naszego systemu, Więc generalnie mając upomina rota na kontenerze można namieszać w naszym systemie operacyjnym komputera na który tego który działa. A może to się stać wtedy kiedy na przykład może stworzycie obraz skąd na razie jakimś złośliwym oprogramowaniem,  które zadziała potem jak znasz kontener się uruchomi.  znane Są przypadki tego że pewne biblioteki w dostępne w repozytorium z paczkami pythonowymi mogą zawierać sobie takie złośliwe oprogramowanie, więc takie złośliwe promowanie które most dostęp do roota może naprawdę Wam zmieszać. Zatem pod względem bezpieczeństwa chcemy nadać tylko te uprawnienia które są faktycznie potrzebne do działania.  `root` w tym przypadku No brzmi dosyć ekstremalnie wręcz. Generalnie raczej nie spotkacie się z sytuacją że to wasza aplikacja namiesza coś w W systemie kontenera czy Volume,  generalnie dopóki wy sami czegoś nie zachodzicie żeby coś zmienić w plikach to tak się nie stanie, Ale musicie być świadomi tego że niestety w internecie cały czas różne ataki następują i generalnie wasze API też może być zaatakowany.  oczywiście to nie będzie takie proste, Bo jednak dyplojujemy to sobie na chmurze które mają już pewne sobie zabezpieczenia,  ale nic nie stoi na przeszkodzie żeby po prostu samemu te bezpieczeństwo kontenera zwiększyć. Oczywiście generalnie  jeżeli traficie na taki atak że po prostu przejdzie przez sieć  chmury trafi do wasze kontenerów na klastrach i tak dalej czyli pokona naprawdę długą drogę to zakładam że i tak sobie poradzi z faktem że  trafi na kontener na który nie Maruta,  i taki haker będzie musiał tego roota uzyskać.  skoro udało mu się  Wszystkie te  zabezpieczenia złamać to i pewnie  poradzi sobie nawet z tym, Żeby jakoś zalogować się na roota na kontenerze. Ale możemy po prostu go w tym opóźnić.  druga sprawa jest taka że to wszystko zależy od tego w jakiejś wyjść środowiska będzie pracować na co dzień i na przykład w waszej pracy będzie wymagane to żeby kontenery były uruchamiane  bez uprawnia roota.  nawet można to zaimplementować na klastrze kubeneresowym który będzie wymuszał to że wasze kontenery będą musiały być uruchamiane  bez uprawnień roota.

  

Więc jak sobie z tym poradzić.  generalnie sprawa jest bardzo prosta dlatego że my podczas budowy naszego obrazu czyli w Dockerfile możemy określić użytkownika  z którego ostatecznie kontener będzie działał w momencie działania. W przypadku stosowania multi-stage buildingu który mam tutaj już zaimplementowany,  taki krok  Krótko mówiąc  “zejścia z roota”  robi się po prostu na samym końcu. 

  

To co my musimy dokonać to po prostu po FROMie wykonać ten etap:

  
  

```dockerfile

FROM python:3.11-slim-bullseye AS service

RUN useradd --create-home appuser

WORKDIR /home/appuser

USER appuser

…

```

  

Robimy to po prostu uruchamiamy komendę RUN która dodaje nam naszego użytkownika  o nazwie `appuser`,  i przy okazji tworzy nam folder w `/home` dla niego

  

 potem tylko trzeba ustawić WORKDIR i następnie przełączyć się na niego korzystająć z instrukcji USER

  

Zbudujmy go sobie:

  

```bash

docker build -t mr-test -f deploy/docker/api/Dockerfile .

```

  

Włączmy go z bashem:

  

```bash

docker run -it --entrypoint=bash --rm mr-test

```

  

zobaczmy, że shell zaczyna się od `appuser`, więc nie jesteśmy na rootcie.

  

Odpalmy sobie:

  

```bash

ls -la

```

  

I widać, że pliki, które są skopiowane z poprzedniego etapu należą do użytkownika root i grupy root. Spróbujmy usunąć nasz folder z plikami źródłowymi

  

```bash

rm -rf src/

```

  

Jak widać dostajemy wszędzie permision denied

  

Oczywiście jesteśmy w stanie wejść na nasz kontener korzystająć z komendy `exec`:

  

```bash

docker exec -it --user=root <<CONTAINER_ID_OR_NAME>> bash

```

  

Co jest przydatne w przypadku debugowania. 

  

Czyli tak naprawdę dają te czynniki kodu możemy naprawdę się dodatkowo zabezpieczyć przed tymi problemami o których wspominałem.

  

Druga Rzecz to kwestie związane z przekazywaniem wszelkich haseł bądź plików konfiguracyjnych które potrafią was użytelić z różnymi usługami.  Zobaczcie my do tej pory korzystaliśmy z Google Clouda,  aby się z nim skomunikować i móc używać pewnych komend do interakcji z nim musieliśmy na początku wykonać takie dwie operacje jak zainicjować połączenie z Google poprzez komendę `gcloud init`,  A następny jeszcze się zalogować poprzez inną komendę ale jej działanie było takie że tworzył na naszym komputerze pewien plik uwierzytelniający i on jest używany przez różne inne biblioteki pythonowe,  inne komendy które pozwalają na interakcję z innymi usługami.  generalnie jest naszym systemem plik który jeżeli wycieknie to każda osoba z was będzie mogła skorzystać z chmury w  w takim zakresie w jakim zostały Wam  nadane uprawnienia przeze mnie. Teraz pytanie powstaje Jak można skorzystać z tych rzeczy podczas budowy Czy podczas uruchomienia naszego kontenera.

  

Spójrzmy sobie na torfale i na naszego tutaj pierwszy krok w którym instalowaliśmy `google-cloud-cli`. Tak powiedziała mi jeszcze z tego nie korzystamy będziemy z tego korzystać na zejdzie czwartym ale chciałam to wam to pokazać tak żebyśmy mieli przykładem który może omawiać.

  

 to co zostało wykonane to Zainstalowałem sobie bibliotekę `google-cloud-cli`  która pozwala mi na interakcję z Google tak samo jak teraz my to robiliśmy wrzucając kontenery na przykład do repozytorium. 

  

Zbudujmy sobie kontener, który końćzy się na tym etapie `build`:

  

```bash

docker build --target=build -t mr-test -f deploy/docker/api/Dockerfile .

```

  

uruchomimy go z bashem

  

```bash

docker run -it --entrypoint=bash --rm mr-test

```

  

I zobaczcie, że mam dostęp do komendy `gcloud`

  

```bash

gcloud

```

  

Spróbujmy sprawdzić do jakich projektóœ mamy dostęp

  

```bash

gcloud projects list

```

  

Widać, że wymaga jest autoryzacja.

  

 Czyli mogę wchodzić interakcję z Google CLoudem.  ale To nie będzie możliwe dlatego że w kontenerze nie ma żadnych plików które mogą nas zautoryzować z chmurą  co pozwoliłoby nam interakcję z naszym projektem Google mamy.  Jaki jest rozwiązanie no?  możemy oczywiście Odpalić te same komendy które  które zrobiliśmy wcześniej.

  

```bash

gcloud init

```

  

I postąpi dalej z tymi krokami  i Wtedy w naszym kontenerze pojawił się odpowiedni pliki i normalnie będziemy mogli sobie z poziomu kontenera Włącz interakcje z chmu.  ale Jakie są rozwiązaniem?  Po pierwsze to coś jest interaktywne bo musimy potem zareagować na Gmaila żeby na to się udało,  więc generalnie  w tym przypadku nie jesteśmy w stanie napisać żadnej komendy  w  która  mogłaby nas zalogować,  bo wymagana jest interakcja ludzka  z  Google żeby się z autoryzować. Nawet gdybyśmy zostali przy tej autoryzacji interaktywnej,  No to jeżeli nasz kontener zniknie  a tak się będzie działo często,   albo się zestartuje  no to te dane znikną. Dlaczego? Dlatego, że w kontenerze jest zachowane to co jest w Dockerfile. Jeżeli dodatkowo sobie utworzymy coś w nim Potem jak się do niego dostaniemy No to to przepadnie czy restarcie czy usunięciu kontenera. 

  

 sytuacja jest generalnie podobna w przypadku przekazywania wszelkich haseł one nie mogą znaleźć się w dockerfilu,  nie chcecie żeby waszym kontenerze przechowane były wasze hasła za każdym razem kiedy ktoś go pobierze i Uruchomi. 

  

Więc jak przekazać hasła i wszelkie pliki do kontenera żeby go móc uruchomić poprawnie. 

Można to zrobić Zarówno podczas uruchomienia kontenera jak i podczas jego budowy.

  

Skupmy się na początku na  na wariancie uruchomienia kontenera.

  

 już to wcześniej widzieliście i też iść na ćwiczenia,  powszechną dobra praktyką jest to Aby przekazywać pewne hasła do kontenerów które chcemy uruchomić poprzez zmienne środowiskowe.

  

Teraz możliwości są dwie:

  

 możemy uruchomić nasz kontener z pewną zmienną środowiskową Załóżmy że hasłem do jakiegoś serwisu cokolwiek:

  

```bash

docker run -it --entrypoint=bash --rm -e MY_PASSWORD=12345 mr-test

```

  

 mamy Nasze hasło imiona środowiskowej,  oczywiście Zakładamy że nasze API korzysta z tego hasła  poprzez odwołanie się do zmiany środowiskowej.  my My będziemy robić takie modyfikacje na  na kolejnym zjeździe poświęconym Kubernetesowi,  bo tam wszelkie właśnie takie dane wrażliwe będą przekazywane jako zmienne środowiskowe.

  

 i teraz jak wpiszemy sobie to zmienną środowiskową:

  

```bash

echo $MY_PASSWORD

```

  

To mamy ją.  czyli hasło ustawiliśmy w momencie uruchomienia kontenera.  natomiast problem jest inny.  wyjdźmy z kontenera:

  

```bash

exit

```

  

 i odpalmy sobie komendę Sprawdź jakie były uruchamiane ostatnie komendy w terminalu:

  

```bash

history

```

  

I zobaczcie co my tu mamy.  w historii użytkowania naszego komputera Oraz korzystania z terminala zostało zapisane nasze hasło.  czyli w obrazie tego hasła nie ma,  ale w historii zostawiliśmy Nasze hasło.  więc generalnie przekazywanie hasła jest tutaj w ten sposób ryzykowna.  Faktycznie  podczas budowy obrazów tego hasła tam w środku nie będzie,  i każdy kto będzie chciał uruchomić nasz kontener będzie musiał podać swoje własne hasło  ale Problem jest taki że na wirtualnych maszynkach  w historii zostaną zapisane wasze.

  

No więc teraz jak przekazać hasło ale w taki sposób żeby ona nie zostały w historii. 

Generalnie powszechną praktyką jest to żeby stworzyć sobie taki plik w naszym środowiskiem,  w naszym przypadku stworzyliśmy plik `.env`,  który jak zobaczyliście jest wykluczony w `.gitignore` oraz `.dockerignore`,  dot env który powstał  No jest to plik który przechowujemy swoje własne  klucze,  hasła itd.  potrzebna do dewelopment  i które są po prostu wrażliwe dlatego nie są umieszczane one w repozytoriach,  a Każdy z deweloperów po prostu taki plik sobie tworzy konfiguracją swojego środowiska jest ono właśnie zaczytywane przez różne  kody,  usługi,  narzędzia z których korzystacie.

  

Więc wejdź do naszego enva  i stwórzmy sobie nam tam zmienną po prostu my password.

  

```

MY_PASSWORD=12345

```

  

 i w momencie uruchomienia kontenera wskazujemy wprost plik z naszym środowiskiem

  

```bash

docker run -it --entrypoint=bash --rm --env-file=.env mr-test

```

  

I sprawdzamy, że jest

  

```bash

echo $MY_PASSWORD

```

  

A historia jest taka, że nie ma tam hasła:

  

```bash

history

```

  

Dobra  myślę sprawa jest dosyć Prosta. Teraz pytanie Jak przekazywać pliki autoryzacyjne to usług w momencie uruchomienia. I rozpoczął to sobie dla przykładu  interakcji z Google.

  

W naszym przypadku  nasze dane uwydające są przygotowane w takiej lokalizacji:

  

```

/home/marcin/.config/gcloud/application_default_credentials.json

```

  

Czy mamy JSONa z plikiem. W takiej sytuacji po prostu użyjemy Volume po to żeby przekazać go do naszego kontenera. I trzeba jeszcze ustawy zmniejszyć wojskową która pokazuje gdzie jest nasz plik mówiący o nas.

  

```bash

docker run -it --entrypoint=bash --rm -v /home/marcin/.config/gcloud/application_default_credentials.json:/app/.gcp_credentials.json:ro -e GOOGLE_APPLICATION_CREDENTIALS=/app/.gcp_credentials.json mr-test

```  

  

Po wejściu do kontenera możemy teraz wyświetlić liste naszych projektów na chmurze:

  

```bash

gcloud projects list

```

  

I działa.

  

Okej To był moment związane z używaniem naszych credentiali i haseł w momencie kiedy uruchamia kontener. Pytanie powstaje w takim razie jak użyć ich w momencie budowania obrazu.

  

Jest taka możliwość. Instrukcja w docker find Run pozwala na podpięcie secretów  w trakcie budowy naszego obrazu.

  

```dockerfile

RUN apt-get update -y \

    && apt-get -y install curl gnupg \

    && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \

    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - \

    && apt-get update -y \

    && apt-get install google-cloud-cli -y --no-install-recommends \

    && apt-get clean \

    && rm -rf /var/lib/apt/lists/* \

ENV GOOGLE_APPLICATION_CREDENTIALS=.gcp_credentials.json

RUN --mount=type=secret,id=gcp_credentials,target=.gcp_credentials.json \

    gcloud projects list

```

  

Ustawiamy zmienną środowiskową gdzie będą Czerwone dane  z naszymi credentialami. W instrukcji RUN dodajemy argument `--mount=secret`, wskazujemy jego nazwe i gdzie ma byc to zapisane w kontenerze. I to jest tylko i wyłącznie zapisywane w momencie budowy a potem automatycznie usuwane i nie będzie to też przechowywane w historii warstw.

Na końcu dodajemy sobie komendę z ranem żeby sprwadzić te projekty i zobaczyć czy to zadziała.

  

I w momencie budowy naszego obrazu musimy podać nasze credentiale:

  

```bash

docker build --target=build -t mr-test -f deploy/docker/api/Dockerfile --secret id=gcp_credentials,src=/home/marcin/.config/gcloud/application_default_credentials.json .

```

  

Argument `--secret` gdzie podajemy `id` secretu oraz gdzie sie znajduje u nas na maszynce.

  

I słuchajcie to kończy nasz moduł związany z security:  Czyli podsumowując

1.  Warto zejść z roota aby jeszcze bardziej nasz kontener zabezpieczyć
    
2.  przekazywanie wszelkich haseł poprzez plik dotenv
    
3. Jeżeli mamy jakiś pliki autoryzacyjny to po prostu w trakcie uruchomienia kontenera przekazujemy jako Volume,  a A gdy są potrzebne w bildzie no to wtedy możemy użyć tutaj tej specjalnej flagi Mount z typem Secret  i będę on dostępne właśnie w momencie budowania naszego obrazu.**