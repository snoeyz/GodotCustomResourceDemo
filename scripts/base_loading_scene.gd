class_name BaseLoadingScene extends Control
# Loading scene only exists to either unload resources or keep resources loaded

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")
