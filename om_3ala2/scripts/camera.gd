extends Camera
	
var position
var rotation

var right
var left
var up
var ctrl
var space

var coin

func _ready():
	set_process(true)
	rotation = get_rotation()
	position = get_translation()

func _process(delta):
	
	right = Input.is_key_pressed(KEY_RIGHT)
	left = Input.is_key_pressed(KEY_LEFT)
	up = Input.is_key_pressed(KEY_UP)
	ctrl = Input.is_key_pressed(KEY_CONTROL)
	
	if right == true:
		rotation.y -= 5*delta
		set_rotation(rotation)
	elif left == true:
		rotation.y += 5*delta
		set_rotation(rotation)
	if up == true:
		translate(Vector3(0, 0, -10*delta))