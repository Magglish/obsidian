---
sr-due: 2022-11-10
sr-interval: 60
sr-ease: 290
---

# IPv6
[[IP adress|Adres IPv6]] ma długość 128 bitów i jest przedstawiony za pomocą hexadecimalnych cyfr:

![[Hexadecymalne liczby.png]]

Zapis pełny przykładowego adresu IPv6:
$$ 2ac1:05b8:123e:0000:0000:0000:03a0:c234$$

Skrócony zapis przykładowego adresu IPv6:
1. możemy pominąć zera na początku hexadecymalnych liczb: $05b8 \rightarrow 5b8$
2. jedna lub więcej kolejnych grup zer może zostać zastąpiona dwoma kolejnymi dwukropkami $::$ (ale tylko raz można to wykonać)

$$ 2ac1:05b8:123e:0000:0000:0000:03a0:c234$$
Po 1)
$$ 2ac1: 5b8:123e:0000:0000:0000: 3a0:c234$$
Po 2)
$$ 2ac1:5b8:123e:: 3a0:c234$$

**Adresy często używane:**
1. $::/128$ unspecified adress (wszystkie cyfry są zerami):
$$0000:0000:0000:0000:0000:0000:0000:0000$$

*(jest to odpowiednik adresu IPv4 $0.0.0.0/32$)*
2. $::/0$ default route (czyli pokrywa wszystkie adresy)

*(jest to odpowiednik adresu IPv4 $0.0.0.0/0$)*
#review