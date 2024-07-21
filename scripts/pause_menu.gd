extends CanvasLayer

func _ready() -> void:
	get_tree().paused = true

func _on_reload_with_preserve_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/loading_scene_with_preserve_references.tscn")

func _on_reload_without_preserve_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/loading_scene_without_preserving_references.tscn")
