extends CanvasLayer

@onready var start_game_button: Button = $StartGameButton


func _on_start_game_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")
