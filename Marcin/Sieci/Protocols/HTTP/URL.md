---
sr-due: 2022-11-13
sr-interval: 60
sr-ease: 287
---

# URL
URL (Uniform Resource Locator)  jest to identyfikator zasobów, który wykorzystywany jest w żadaniach i odpowiedziak protokołu [[HTTP]]. 

W porównaniu do [[URI]], URL zawiera w sobie również informacje o "położeniu" danego zasobu.

**Schemat URL**
```
scheme:[//[user[:password]@]host[:port]][/path][?query][#fragment]
```

- **scheme** - używane do określenia protokołu, np. [[HTTP]], [[HTTPS]]
- **user:password** - używane do uwierzytelnienia. nie jest to bezpieczny sposób na przesyłanie loginu i hasła
- **host** - nazwa domeny internetowej lub [[IP adress]]
- **port** - numer [[Port|portu]]
- **path** - ścieżka określająca zasób
- **query** - dodatkowe dane identyfikujące zasób np. `parametr=wartosc&format=json`
- **fragment** - określenie fragmentu strony url, np. nagłówek/rozdział w tekście
#review