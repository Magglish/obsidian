# Load Balancing

Load Balancing to nic innego jak efektywne zarządzanie przychodzącymi requestami i odpowiednie przekierowywanie ich do aplikacji/serwisów, które mogą je obsłużyć.
Moga one być przekierowane losowo, czyli w efekcie wszystkie serwisy będą obłożone pracą równomiernie lub spojrzęc na obłożenie serwisów i czas przetwarzania przez nich requestów i kierować requesty tylko do tych maszynek, które szybko obsługują requesty z niskim obłożeniem.
Load Balancer pomoga równiez w tym żeby Nas serwis zawsze odpowiadał, tzn. jeżeli któryś padnie, to przekierowuje on ruch tylko do tych do któ