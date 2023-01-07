---
sr-due: 2023-01-09
sr-interval: 2
sr-ease: 200
---

# Testy w oprogramowaniu

Testy w oprogramowaniu są istotne:

1. Walidują obecną logikę i sprawdzają czy działa jak powinno, tzn. kod zwraca takie wyniki jakich się spodziewamy
2. Pozwala też na pokazanie jak dana logika działa. W sytuacji kiedy czytamy dany kod i nie do końca może rozumiemy go, możemy spojrzeć w testy napisane pod niego i spojrzeć jaki jest input i czego się spodziewamy
3. Pisanie testów sprawdza czy nasz kod jest **testowalny** - jeżeli mamy trudności w napisaniu testów to albo nie rozumiemy jak nasz kod nie działa albo napisaliśmy go zbyt skomplikowanie i należy go uprościć. 
4. Bez testów bardzo trudny jest refactoring. Tak na prawdę refactoringu nie robi się bez testów.

Testy powinny być:

1. Wyizolowane - nie zależą od innych testów i nie zależą od innych komponentów/serwisów (aby taką niezależność uzyskać można zastosować [[Mocking|mockowanie]])
2. Szybkie - bo używamy ich wielokrotnie
3. Deterministyczne
4. Proste i łatwe do interpretacji

Wyróżniamy:
1. [[Unit tests]]
2. [[Integration tests]]
3. [[Behavioral tests]]
4. [[Mutation tests]] 
5. [[Smoke tests]]
6. [[Stress tests]] 
7. [[Sanity tests]]

#review