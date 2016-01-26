extends Spatial

var position
var rotation

var right
var left
var up
var down

func _ready():
	set_process(true)
	set_process_input(true)
	rotation = get_rotation()
	position = get_translation()

func _process(delta):
	if right == true:
		rotation.y -= 5*delta
		set_rotation(rotation)
	elif left == true:
		rotation.y += 5*delta
		set_rotation(rotation)
	if up == true:
		translate(Vector3(0, 0, -7*delta))
	elif down == true:
		translate(Vector3(0, 0, 7*delta))


func _input(event):
	if Input.is_key_pressed(KEY_RIGHT):
		right = true
	elif not Input.is_key_pressed(KEY_RIGHT):
		right = false


	if Input.is_key_pressed(KEY_LEFT):
		left= true
	elif not Input.is_key_pressed(KEY_LEFT):
		left = false


	if Input.is_key_pressed(KEY_UP):
		up = true
	elif not Input.is_key_pressed(KEY_UP):
		up = false


	if Input.is_key_pressed(KEY_DOWN):
		down = true
	elif not Input.is_key_pressed(KEY_DOWN):
		down = false