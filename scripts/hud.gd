class_name HUD extends CanvasLayer

var player_inventory: PlayerInventory

@onready var ref_counted_label: Label = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/RefCountedLabel
@onready var coin_label: Label = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/CoinLabel

func _ready() -> void:
	player_inventory = ResourceLoader.load("res://data/player_inventory.tres")
	update_coin_count()
	player_inventory.changed.connect(update_coin_count)

func _process(_delta: float) -> void:
	update_reference_count()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_text_indent"):
		player_inventory.unreference()
		update_reference_count()
	elif Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/start_game_menu.tscn")

func update_coin_count() -> void:
	coin_label.text = "Coins Collected: %d" % player_inventory.coin_count

func update_reference_count() -> void:
	ref_counted_label.text = "References to PlayerInventory: %d" % player_inventory.get_reference_count()
