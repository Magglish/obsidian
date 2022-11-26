---
sr-due: 2022-12-12
sr-interval: 16
sr-ease: 180
---

# Node

![[Node in Kubernetes.png]]

[[Kubernetes]] worker (Node) składa się z [[Kubelet]], [[Proxy]] oraz [[Container Runtime]].

Kubernetes node jest lekki, ponieważ jedynym podem jaki na nim działa po starcie jest tylko [[Proxy]], a [[Kubelet]] i [[Container Runtime]] to daemony.


#review 