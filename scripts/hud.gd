class_name HUD extends CanvasLayer

var player_inventory: PlayerInventory
@onready var coin_label: Label = $MarginContainer/PanelContainer/MarginContainer/CoinLabel

func _ready() -> void:
	player_inventory = ResourceLoader.load("res://data/player_inventory.tres")
	update_coin_count()
	player_inventory.changed.connect(update_coin_count)

func update_coin_count() -> void:
	coin_label.text = "Coins Collected: %d" % player_inventory.coin_count
