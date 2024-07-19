extends Node2D

const COIN = preload("res://scenes/coin.tscn")
@export var player_inventory: PlayerInventory

func _ready() -> void:
	spawn_coin()
	player_inventory.changed.connect(spawn_coin)

func spawn_coin() -> void:
	var coin: Coin = COIN.instantiate()
	coin.global_position.x = randi_range(50, 1100)
	coin.global_position.y = randi_range(520, 620)
	# Godot threw an error when I tried calling add_child(coin) directly
	call_deferred("add_child", coin)
