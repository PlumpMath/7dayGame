extends Spatial

var space
var new_building
var building1
var building2
var building3

func _ready():
	set_process(true)
	
	building1 = get_node("Spatial")
	building2 = get_node("Spatial2")
	building3 = get_node("Spatial3")

func _process(delta):
	space = Input.is_key_pressed(KEY_SPACE)
	
	if space:
		new_building = building3.duplicate()
		new_building.set_translation(Vector3(0, 0, 0))
		add_child(new_building)