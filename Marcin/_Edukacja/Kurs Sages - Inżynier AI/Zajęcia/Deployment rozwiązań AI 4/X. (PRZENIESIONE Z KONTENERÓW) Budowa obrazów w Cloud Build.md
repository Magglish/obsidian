# Budowa obrazów w Cloud Build

### TEN OPIS POWSTAŁ W TRAKCIE PRZYGOTOWANIA DRUGIEJ LEKCJI, KIEDY ZDAŁEŚ SOBIE SPRAWĘ Z TEGO, ŻE LEPIEJ PRZENIEŚĆ CLOUDBUILDA NA ZJAZD 4-TY A NIE ROBIĆ GO NA DRUGIM, BO NA DRUGIM BEDZIE NA TO ZA MALO MIEJSCA I W DODATKU Z TEGO CLOUDBUILDA AZ TAK MOCNO KORZYSTAC NIE BEDZIECIE. W ZAMIAN PO PROSTU WTEDY PUSH DO REPO BYL RECZNIE, A CALA AUTOMATYZACJA Z CLOUDBUILDEM BEDZIE WYKONANA NA 4-TYM ZJEZDZIE. ALE PONIZSZY OPIS DODALES PONIEWAZ NIE CHCIALES ZEBY POMYSL Z GLOWY CI WYLECIAŁ.

### TEŻ TRZEBA BEDZIE ZAKTUALIZOWAC KOD W REPO NA NAJNOWSZY JAK TUTAJ DOJDZIESZ, BO KOD Z REPO ZOSTAL SKOPIOWANY Z DRUGIEGO ZJAZDU, W POŁOWIE, WTEDY KIEDY CHCIAŁEŚ WŁAŚNIE ZROBIĆ MODUŁ ZWIĄZANY Z CLOUD BUILDEM

  

W takim razie przechodzimy do następnego etapu.  do tej pory cały czas budowaliśmy kontenery lokalne,  na naszym laptopie.  ale w rzeczywistości tak nie będzie, w pipeline  cicd musi zadziać się wszystko automatycznie. Do budowy kontenerów w sposób zdalny,  czy na jakiś serwerach po prostu są stworzone do tego dedykowane usługi.  na Google na którą teraz pracujemy jest usługa zdefiniowana jako Cloud Build [https://console.cloud.google.com/cloud-build/dashboard](https://console.cloud.google.com/cloud-build/dashboard) Która po prostu buduje kontenery.  generalnie pod spodem to działa tak że uruchamia wirtualną maszynkę,  buduje kontener zgodnie z tym jak to zdefiniujemy,  wyślę go na naszego repozytorium które wskażemy  i wirtualna maszynka po prostu się wyłączy.  usługa jest bardzo tania, Ma dobre maszynki na których  zbudowane są kontenery więc za bardzo wymagających buildów jest to super rozwiązanie  no i te maszynki są znacznie lepsze niż defaultowe maszynki które mamy na GitLabie. Generalnie gitlab będzie takim miejscem zbierania wszystkich informacji,  a my odpowiednie joby będziemy wysyłać do odpowiednich miejsc. 

  

W takim razie zaczniemy sobie od początku.  przejdź naszego folderu deploy/docker I dodatkowo stwórzmy sobie jeszcze jeszcze folder python.  na drugich zajęciach z kontenerów wrzuciliśmy sobie obraz pythona Zgodnie z tym co wam mówiłem Czyli że mieć pewność że pobieramy całość to auto samą wersję,  oraz żeby nie  przekroczyć limitów na docker hubie. Natomiast teraz będziemy też ten proces sobie automatyzować.

  

Będziemy budować obrazy na Google cloudzie  i podobnie jak obrazy budowano lokalnie używają `.dockerignore`,  tak obrazy budowane na chmurze będą używać `.gcloudignore`:

  

(W PONIŻSZYM .gcloudignore NIE MOZE BYC Dockerfile BO COS SIE WALI Z BUDOWANIEM OBRAZU)

  

```

venv/

.venv/

.poetry_cache/

data/

.git/

.idea

**/__pycache__

.ipynb_checkpoints

.vscode/

.coverage

.cache

**/.pytest_cache

**/*.html

.dockerignore

.gitignore

```

  

W `deploy/docker/api` stwórzmy sobie plik `cloudbuild.yaml`, który definiować będzie to jakie kroki mają być wykonane w Cloud Build, żeby zbudować nasz obraz.

  

Definicję pipelinu który  ma się uruchomić na cloudbildzie Aby zbudować nasz kontener zaczynamy od argumentu  wartości `steps`:

  

```yaml 

steps:

```

  

Steps będzie listą Listą czynności które musimy wykonać. Teraz jakie będziemy to wykonywać czynności?  takie same jak byśmy robili na komputerze tak naprawdę.  przy czym tutaj trzeba pamiętać o tym  że ten pipeline będzie wykonany na nowej maszynce,  na czystej maszynce wirtualnej. A Przypominam o tym że najlepiej budować Jest tak kontenery Żeby korzystać z casha po to aby ten proces był szybszy. Niestety,  nie wiem czy pamiętacie ale na drugim zjeździe tłumaczyłem o tym że są dwa rodzaje silników budowy kontenerów.  w Cloud Buildzie który teraz będziemy używać, Niestety działa jeszcze ten stary silnik budowy kontenerów.  Oznacza to  że jeżeli chcemy skorzystać z cash-a jakiegoś kontenera,  to ten kontener musi być już na maszynce wirtualnej,  a my go jeszcze nie mamy w tej chwili. Więc tak naprawdę nasz pipeline budowy kontenera będzie bardzo prosty i składał się tylko z trzech etapów

1.  na początku pobierzemy sobie obraz z naszego repozytorium po to żeby użyć go jako casha i przyśpieszyć w ten sposób proces budowy
    
2.  następnie w drugim kroku będziemy budować ten kontener
    
3.  a w trzecim Wyślemy go do naszego repozytorium
    

  

 i to będzie koniec. 

  

W takim razie zaczniemy sobie od definiowania naszego `cloudbuild.yaml`

  

```yaml

steps:

  - id: "pull-latest-container"

  - id: "build-new-image"

  - id: "push-to-repository"

```

  

Mamy listę trzech elementów,  czyli będziemy mieli trzy kroki  i na ten moment nadaliśmy sobie idki, które w skrócie mówią nam co będziemy robić.

  

Zacznijmy sobie od pierwszego kroku czyli od ściągnięcia najnowszego kontenera.

  

Drugi argument który musimy nadać to jest `name`:

  

Teraz to jak wam powiedziałem wirtualna maszynka która zostanie uruchomiona do tego żeby zbudować nasz kontener Generalnie za dużo rzeczy w sobie nie ma.  dlatego Cloud Build działa tak że On dostarcza pewnego rodzaju builderów które mogą wykonywać pewne działania.  tymi Bilderami są po prostu kontenery w których będą uruchamiane nasze konkretne kroki. Czyli generalnie będąc precyzyjnym nasz kontener będzie budowany w innym kontenerze. My korzystamy z Dockera podczas budowy naszego kontenera,  ale gdybyśmy korzystali z innych technologii Do budowy kontenerów to też są buildery do nich:

  

```yaml

steps:

  - id: "pull-latest-container"

    name: 'gcr.io/cloud-builders/docker'

```

  

Czyli w tym momencie wskazaliśmy, że naszym builderem będzie docker.

  

Dalej musimy wskazać co chcemy zrobić.  od razu napiszę kod i wytłumaczę wam jak to działa: 

  

```yaml

steps:

  - id: "pull-latest-container"

    name: 'gcr.io/cloud-builders/docker'

    args: ['pull', 'europe-central2-docker.pkg.dev/sotrender-rd/mrybinski-live-coding/api:latest']

```

  

Tak się składa że ten Builder który to Wskazałem,  to jest kontener  z zainstalowanym Dockerem w sobie I  jego ENTRYPOINT  wskazuje po prostu na `docker`. Więc w takiej sytuacji w kluczu `args` Musimy po prostu wskazać to co zostanie przekazane do tej komendy `docker`. 

  

Czy to jest to samo  jakbyśmy lokali na komputerze napisali po prostu

  

```bash

docker pull europe-central2-docker.pkg.dev/sotrender-rd/mrybinski-live-coding/api:latest

```

  

Czyli to co to co robiliśmy wcześniej na naszym.

  

Teraz Cloud Build ma bardzo fajny argument `allowFailure`:

  

```

steps:

  - id: "pull-latest-container"

    name: 'gcr.io/cloud-builders/docker'

    args: ['pull', 'europe-central2-docker.pkg.dev/sotrender-rd/akowalski-live-coding/api:latest']

    allowFailure: true

```

  

W którym przypadku pullowania obrazu jest bardzo przydatny. Dlaczego pozwalamy na to żeby ten krok mógł zfailować? Dlatego że my pobieramy ten obraz po to żeby skorzystać z cashe. Jeżeli tego obrazu nie będzie w repozytorium,  to nic nie szkodzi,  nasz kontener w drugim kroku zbuduje się bez problemu,  ale będzie się budował po prostu wolniej, Ale się zbuduję. więc nie chcemy żeby ten krok związany z pullem  po prostu zatrzymywał cały proces budowy kontenera, jeżeli tego obrazu nie będzie, bo tak jak mówie - zbudujemy nowa wersje kontenera bez problemu.

  

I to kończy nasz pierwszy krok.

  

Zanim pójdziemy dalej chciałbym wprowadzić jedną rzecz tutaj w campbildzie to jak nam znacznie łatwiej teraz późniejszą pracę.  ta specyfikacja kroków Cloud bilda którą właśnie teraz pozwala nam na definiowanie zmiennych, Więc Dodajmy ją sobie po stepsach:

  

```yaml

substitutions:

  _REPO_PATH: 'europe-central2-docker.pkg.dev/sotrender-rd'

  _REPO_NAME: 'akowalski-live-coding'

```

  

Czyli po prostu mam jedną zmienną `_REPO_PATH` która wskazuje na tą ścieżkę i  druga zmienna `_REPO_NAME` wskazująca na nazwę. Teraz Z mojego doświadczenia rekomenduje wam nadawanie nazw zmienne środowiskowych od podłogi,  czyli na przykład numerze pythonowej oznacza to coś prywatnego.  natomiast to jest związane z tym że Cloud Build ma bardzo dużo zmiennej środowiskowych gotowych dla nas którym możemy użyć w przypadku definiowania to jak nasze kontry mają budowane,  i używając podłogi przed nazwą po prostu zabezpieczamy się że czegoś nie nadnapiszemy co może coś popsuć. 

  

W `_REPO_PATH` wstawimy naszą ścieżkę do repo i ona dla każdego z Was będzie taka sama, natomiast w `_REPO_NAME` wstawcie proszę swoje repozytorium, które skłąda się z pierwszej litery imienia, potem nazwisko, potem `-live-coding`, np. `mrybinski-live-coding`.

  

Zmodyfikujmy sobie nasz pierwszy etap żeby z tych zmiennych skorzystać:

  

```yaml

  - id: "pull-latest-container"

    name: 'gcr.io/cloud-builders/docker'

    args: ['pull', '${_REPO_PATH}/${_REPO_NAME}/api:latest']

    allowFailure: true

```

  

Drugi krok jak sama nazwa wskazuje zakłada budowę obrazu.  i schemat działania będzie bardzo podobny tak jak to było w poprzednim roku, Czyli w `name` wskazujemy naszego buildera, A w `args` będziemy podawać to jak mamy ten kontener budować.

  

Teraz zwróćcie uwagę że pracujemy w YAMLu Czyli mamy te same zasady które na kubernetesie.  elementy listy w YAMLu będą połączone i rozdzielone spacjami, Więc tak naprawdę każde kolejne argumenty po prostu będą elementem listy.

  

```yaml

  - id: "build-new-image"

    name: 'gcr.io/cloud-builders/docker'

    args: [

      'build',

      '--tag=${_REPO_PATH}/${_REPO_NAME}/api:latest',

      '--file=deploy/docker/api/Dockerfile',

      '--cache-from=${_REPO_PATH}/${_REPO_NAME}/api:latest',

      '--network=cloudbuild',

      '--progress=plain',

      '.'

    ]

```

  

Czyli tak jak  Robiliśmy to na zjeździe drugim

1.  nadajemy tagi
    
2.  wskazujemy Gdzie jest nasz Dockerfile
    
3.  używamy argumen `--cache-from`  po to aby wskazać właśnie na kontener który przed chwilą pobraliśmy w poprzednim kroku po to aby skorzystać z niego jako cache
    
4.  Następnie musimy dodać dwie rzeczy które są niezbędne w przypadku stosowania Cloud builda czyli `--network=cloudbuild`  oraz `--progress=plan`  dzięki czemu Zobaczymy cały output w konsoli Cloud Build,
    
5. No i na końcu kropeczka, Czyli wskazanie Z którego miejsca budujemy kontener się zaczyna czyli w przypadku naszym po prostu z repo, Czyli wskazujemy z jakiego miejsca ma powstać Build Context to o czym wam mówiłem na zjeździe drugim. 
    

  

No i słuchajcie to Kończy nam od razu nasz krok drugi. 

  

Przechodzimy teraz do ostatniego kroku,  skoro mamy już konto rozbudowane to trzeba po prostu zpushować do repo.

  

```yaml

  - id: "push-to-repository"

    name: 'gcr.io/cloud-builders/docker'

    args: ['push', '--all-tags', '${_REPO_PATH}/${_REPO_NAME}/api']

```

  

Czyli jest tak samo jak wcześniej ustawiamy `name` na buildera, którego chcemy użyć. Następnie komendę Push nasz obraz. Przy czym bardzo ważne jest to że tutaj Nadałem argument `--all-tags`, Dlatego że naszemu obrazowi nadaliśmy kilka tagów, Po to aby łatwiej go zidentyfikować w naszym repozytorium i łatwiej też go pulować.  bez tego Argumentu zostanie zpushowany obraz tylko z jednym tagiem który został nadany jako pierwszy. 

  

Dobra w takim razie zapniemy to w nasz Spróbujmy w takim razie  spróbować odpalić to lokalnie:

  

```bash

gcloud builds submit --region=europe-central2 --config=deploy/docker/api/cloudbuild.yaml --async 

```

  

W tym celu używamy `gcloud builds submit` Który wchodzi w interakcję z Cloud Buildem I to ogromna prośba do was żeby pamiętać o argumencie region `--region=europe-central2` Żeby wszelkie operacje wykonywały się właśnie niedaleko nas w Warszawie. Jeżeli ktoś z was tego argumentu nie poda to oczywiście tragedii nie ma,  ale już teraz się was uczulać po prostu na wybór regionu w momencie kiedy wchodzicie w interakcje z chmurą dlatego że od regionu dużo zależy -  to ile zapłacicie,  oraz to jak długo zajmie przesył danych. Nasze klastry, serwisy obecnie stoją na `europe-central2`, więc chcemy budować w tym samym miejscu. I na końcu wskazanie gdzie jest nasz plik definiujacy kroki  powstawania naszego obrazu `--config`  i na końcu flaga `--async` Po to aby nie blokowało nam naszego terminala.

  

Po uruchomieniu mamy od razu informacje o tym że ten job został  zlecony No i mamy też linka żeby sobie go podejrzeć.  Wejdźmy do niego i zobaczmy co się dzieje.

  

Także widzimy że mamy output z Każdego kolejnego kroku,  

1. najpierw jest pulowany z obraz naszego repozytorium

2.  następnie mamy krok związany z budową tego obrazu tak zdefiniowaliśmy

3.  i na końcu pushowanie do repozytorium

  

Wejdźmy sobie takie rzeczy do Artifact Registry I naszego repozytorium  I zobaczmy w takim razie czy wszystko jest. 

  

### DALSZE KROKI KTÓRE TRZEBA WYKONAĆ, ABY DOKOŃCZYĆ LEKCJE O CLOUDBUILD ZOSTAŁY SPISANE PONIŻEJ, ALE NIE ZOSTAŁY ONE PRZYGOTOWANE PODCZAS PRZYGOTOWANIA LEKCJI NA 2-GI ZJAZD BO DALSZE KROKI MOCNO ZALEŻĄ OD 3-CIO ZJAZDY ORAZ POCZATKU 4-GO

  
  
  

1. Wytłumacz jak jest budowany obraz - w sensie wysyłanie build context do chmury. I nasze repo jest rozpakowywane w VMce i budowany obraz. Dlatego lepiej nie umieszczajcie w `.gcloudignore` Dockerfile bo wtedy on nie zbuduje obrazu - pokaz im.
    
2. Wróć do pipeline CICD i dodaj ten krok, żeby obraz się budował automatycznie
    
3. Na razie jest tag tylko latest, wiec trzeba dodać jeszcze tag z commitem. żeby to osiągnąc trzeba wprowadzić nowy parametr w `substitutions` i potem w `gcloud builds submit` dodać argument `--substitutions=_COMMIT_SHA=<...>`
    
4. Trzeba utworzyć folder z `python` i dodać Dockerfile tylko z FROMem, wyjaśnij, że chcemy być spójni z tym jak są budowane inne obrazy, a FROM to nic innego jak git pull.
    
5. Trzeba dodać `cloudbuild.yaml` do pozostałych czyli do `python`, `redis` oraz `postgres`. Wyjaśnij im, że to wszystko zależy od use case’a - jeżeli przygotowujemy bardziej generalny obraz, jak np. python to można go umieścić w innym repo: “generalnym repo”, a np. takie specyficzne obrazy dostosowane pod nasz use-case, mogą trafić do tego samego “repo” - to wszystko zależy od warunków w jakich pracujecie. Założmy, na potrzeby naszego zjazdu i przećwiczenia, że każdy z nas chce mieć swój obraz z pythonem, redisem i postgresem. I od tego zależy jak nasze API działa. Więc wepnij to też w pipeline CICD. Natomiast w rzeczywistości może być tak, że to będzie w oddzielnych repozytoriach i tam też będą pipeline’y CICD, które wrzucaja nowe wersje obrazu. Przy czym pushowanie takiego samego obrazu do Artifact Registry ma taką fajną zaletę, że nie powstanie nowy obraz jeżeli już taki był, a po prostu zostanie dodany mu tag z commitem. Więc generalnie to jest o tyle fajne, że mając informację o commicie mamy cały kod jaki został wtedy wdrożony, ORAZ wszystkie obrazy, które zostały użyte do działania naszego API.
    

Pokaż im jak to zrobić na przykładzie np. Pythona. Ale w ramach ćwiczeń niech zrobią wszystko u siebie: api, postgres, python, redis, wpieli to w CICD. (Ale ty musisz też wtedy sam to zrobić dla live-codingu żeby potem wszystko działało poprawnie - może wtedy kiedy będą wykonywać ćwiczenia? Przygotuj sobie w notatkach gotowe rozwiązania tak aby nie było problemów).

6. Wepnij to potem do pipeline CICD.
    

  
  
  
  
  
  
  
  
**