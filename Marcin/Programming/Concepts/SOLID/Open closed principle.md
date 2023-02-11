---
sr-due: 2023-03-18
sr-interval: 35
sr-ease: 180
---

# Open closed principle

Open closed principle oznacza, że implementacja klasy powinna być zarówno otwarta, czyli możliwa do rozszerzenia (np. nowe metody, nowa subklasa), ale również zamknięta, czyli logika powinna być tak zaimplementowana, że nie wymagane są zmiany w kodzie, który został już napisany.

Open closed principle łatwiej jest uzyskać gdy dobrze wykorzystujemy [[Polymorphism]].

Nie stosowanie open closed principle zwiększa [[Ripple effect]].

**Przykład:** 

![[Open closed principle.png]]

```python
class Event:
	def __init__(self, raw_data):
		self.raw_data = raw_data
	@staticmethod
	def meets_condition(event_data: dict) -> bool:
		return False
		
class UnknownEvent(Event):
"""A type of event that cannot be identified from its data"""

class LoginEvent(Event):
	@staticmethod
	def meets_condition(event_data: dict):
		return (
			event_data["before"]["session"] == 0
			and event_data["after"]["session"] == 1
		)
		
class LogoutEvent(Event):
	@staticmethod
	def meets_condition(event_data: dict):
		return (
			event_data["before"]["session"] == 1
			and event_data["after"]["session"] == 0
		)
		
class SystemMonitor:
"""Identify events that occurred in the system."""
	def __init__(self, event_data):
		self.event_data = event_data
	def identify_event(self):
		for event_cls in Event.__subclasses__():
			try:
				if event_cls.meets_condition(self.event_data):
					return event_cls(self.event_data)
			except KeyError:
				continue
		return UnknownEvent(self.event_data)
```

I gdy pojawi sie coś nowego, wystarczy dodać nowy obiekt:

```python
class TransactionEvent(Event):
"""Represents a transaction that has just occurred on the system"""
	@staticmethod
	def meets_condition(event_data: dict):
		return event_data["after"].get("transaction") is not None
```

#review