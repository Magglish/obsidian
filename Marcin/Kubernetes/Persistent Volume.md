---
sr-due: 2023-02-03
sr-interval: 34
sr-ease: 179
---

# Persistent Volume

Persistent Volume to storage (np. dysk) który został stworzony przez administratora lub dynamicznie przez [[Storage Class]] w celu używania tego przez jeden lub wiele [[Pod|podów]] jednocześnie.
Jest to zasób w klastrze tak jak node, a korzystanie z Persistent Volume odbywa się za pomocą [[Persistent Volume Claim]].

Persistent Volume jest jak [[Volume|volume]] w [[Pod|podzie]], z tym, że zarządzany jest niezależnie od Podów i stan Podów nie wpływa na Persistence Volume.



#review 