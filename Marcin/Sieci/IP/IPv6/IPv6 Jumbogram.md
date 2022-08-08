# IPv6 Jumbogram
[[Protocol]] protokól dla [[IPv6]] który rozszerza [[MTU]] z maksymalnego rozmiaru 65 535 bitów (który był dla IPv4) do $(2^{32}-1) ~ 4 \text{ GB}$ danych.

Aby móc przesłać dane za pomocą protokołu Jumbogram, należy dodać do [[IPv6 Packet Header]] *jumbo payload option*.

Aby skorzystać z IPv6 Jumbogram, sieci muszą wspierać ten prokół, a to często wymaga zmiany w warstwach *[[TCP IP Transport Layer|transport layer]]*.