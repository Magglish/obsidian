---
sr-due: 2022-11-02
sr-interval: 24
sr-ease: 252
---

# systemctl
`systemctl` to komenda do zarzadzania procesami korzystajac z [[systemd]].
Możemy np.:
1. sprawić, żeby dany system uruchamiał się wraz z bootem
   `sudo systemctl enable/disable <<JAKIS_SERVICE>>` 
2. wylistować servicy i [[Daemon|daemony]]
   `sudo systemctl list-units `
   #review