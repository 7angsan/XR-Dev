extends CanvasLayer

var jsonData = []

var data_file_path = "res://Dialogue/json/SelectionSortTutorial.json"

func _ready():
	jsonData = load_json_file(data_file_path)
	
func load_json_file(filePath : String):
	if FileAccess.file_exists(filePath):
		var dataFile = FileAccess.open(filePath, FileAccess.READ)
		var parsedResult = JSON.parse_string(dataFile.get_as_text())
		
		if parsedResult is Dictionary:
			print("error in structure: supposed to be array")
			
		elif parsedResult is Array:	
			return parsedResult
		else:
			print("Error reading file")
	else:
		print("File doesn't exist")
