class_name Coin extends Area2D

var player_inventory: PlayerInventory

func _ready() -> void:
	player_inventory = ResourceLoader.load("res://data/player_inventory.tres")

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		player_inventory.coin_count += 1
		queue_free()
