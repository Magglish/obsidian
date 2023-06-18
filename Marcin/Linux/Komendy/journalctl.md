# journalctl
`journalctl` to komenda korzystajaca z daemona [[journald]] aby wyświetlić logi.

Np.
1. Zobacz wszystkie logi na obecnym bootcie:
   `journalctl -b`
2. Zobacz wszystkie logi z jakiego service'u
   `journalctl -b -u nginx.service`
