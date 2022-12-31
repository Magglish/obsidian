# Dependency injection

Dependency injection oznacza, że nie tworzymy zależności podczas inicjalizacji, a pozwalamy użytkownikom na zdefiniowanie zależności poprzez argumenty do inicjalizacji klasy - dzięki temu jest to bardziej elastyczne.

Przykład:

```python
class EventStreamer:
	def __init__(self, target: DataTargetClient):
		self._target = target
	def stream(self, events: list[Event]) -> None:
		for event in events:
			self._target.send(event.serialise())
```