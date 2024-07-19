class_name PlayerInventory extends Resource

@export var coin_count: int:
	set(value):
		coin_count = value
		changed.emit()
