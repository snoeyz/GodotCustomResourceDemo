class_name BaseLoadingScene extends Control
# Loading scene only exists to either unload resources or keep resources loaded

var anim_timer: float = 0.0

func _process(delta: float) -> void:
	anim_timer += delta
	if anim_timer > 0.33:
		anim_timer = 0.0
		$Label.text += "."

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")
