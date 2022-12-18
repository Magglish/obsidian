---
sr-due: 2022-12-20
sr-interval: 2
sr-ease: 200
---

# EAFP

EAFP (Easier to Ask Forgiveness thant Permission) zakłada, że piszemy kod w taki sposób aby wykonał akcje, a gdy coś w nim nie zadziała (rzucany jest wyjątek) to mamy przygotowaną obsługę błędów.

``` python
try:
	your_function()
except SomeException as e:
	do_something_else()
```

EAFP jest przeciwieństwiem [[LBYL]]



#review