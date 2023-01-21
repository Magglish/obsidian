---
sr-due: 2023-03-22
sr-interval: 60
sr-ease: 180
---

# Node

![[Node in Kubernetes.png]]

[[Kubernetes]] worker (Node) składa się z [[Kubelet]], [[K8s Proxy]] oraz [[Container Runtime]].

Kubernetes node jest lekki, ponieważ jedynym podem jaki na nim działa po starcie jest tylko [[K8s Proxy]], a [[Kubelet]] i [[Container Runtime]] to daemony.


#review 