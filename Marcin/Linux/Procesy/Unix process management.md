---
sr-due: 2023-03-27
sr-interval: 60
sr-ease: 223
---

# Unix process management
[[Unix]] [[Process|process]] management rozróżnica proces od programu, który dany proces uruchamia. W systemach unixowych procesy są non stop tworzone z nowymi [[Address space|adresami pamięci]] i zabijane. 

W tym podejściu rozróżniamy pojęcie rodzica (*parent*) i dziecka (*child*). Rodzic tworzy non stop nowe procesy i je ubija, a dziecko to jest utworzony proces w jakimś celu - moga łatwo się znaleźć ponieważ [[Process descriptor|process descriptory]] zawierają równiez informację o tym kto jest rodzicem. Dzieci mogą mieć również swoje dzieci (*siblings*). Informacje o tym kto jest kim trzymane są w [[Hash table|hash tables]], aby przyspieszyć wyszukiwanie.

W sytuacji kiedy dziecko wykona swoje operacje i czeka aż rodzic "przejmie" informacje od niego, staje się tak zwanym [[Process zombie|procesem "zombie"]].

![[Process management - parent and children.png]]

#review