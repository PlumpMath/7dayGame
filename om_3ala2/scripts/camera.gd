extends Camera
	
var position
var rotation

var right
var left
var up
var down

var coin

func _ready():
	set_process(true)
	rotation = get_rotation()
	position = get_translation()

func _process(delta):
	
	right = Input.is_key_pressed(KEY_RIGHT)
	left = Input.is_key_pressed(KEY_LEFT)
	up = Input.is_key_pressed(KEY_UP)
	down = Input.is_key_pressed(KEY_DOWN)
	
	if right:
		rotation.y -= 5*delta
		set_rotation(rotation)
	elif left:
		rotation.y += 5*delta
		set_rotation(rotation)
	if up:
		translate(Vector3(0, 0, -10*delta))
	elif down:
		translate(Vector3(0, 0, 10*delta))