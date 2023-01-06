---
sr-due: 2023-03-07
sr-interval: 60
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