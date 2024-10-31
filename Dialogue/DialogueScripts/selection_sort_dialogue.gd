extends CanvasLayer

var current_dialogue_id = 0
var max_dialogue_id : int


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#label.text = Jsonparse.jsonData[0]['text']
	max_dialogue_id = len(Jsonparse.jsonData)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func next_dialogue():
	current_dialogue_id += 1
	if current_dialogue_id >= max_dialogue_id:
		return
	$Control/ColorRect/MarginContainer/VBoxContainer/MarginContainer/RichTextLabel.text = Jsonparse.jsonData[current_dialogue_id]['text']
	
func _on_button_pressed() -> void:
	next_dialogue()
