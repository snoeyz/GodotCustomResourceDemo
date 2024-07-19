class_name Coin extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		var inventory: PlayerInventory = ResourceLoader.load("res://data/player_inventory.tres")
		inventory.coin_count += 1
		queue_free()
