extends CanvasLayer


signal back

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sorting_algo_pressed() -> void:
	get_tree().change_scene_to_file("res://game_ui.tscn")


func _on_wip_pressed() -> void:
	pass # Replace with function body.


func _on_back_pressed() -> void:
	get_parent().get_node("Control").visible = true
	$".".visible = false
	#emit_signal("back")
