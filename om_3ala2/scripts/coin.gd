extends Spatial

var delta
var position
var right
var left

func _ready():
	set_process(true)
	set_process_input(true)
	position = get_rotation()

func _process(delta):
	self.delta = delta
	if right == true:
		position.y += 10*delta
		set_rotation(position)
	elif left == true:
		position.y -= 10*delta
		set_rotation(position)

func _input(event):
	if Input.is_key_pressed(KEY_RIGHT):
		right = true
	elif not Input.is_key_pressed(KEY_RIGHT):
		right = false
	if Input.is_key_pressed(KEY_LEFT):
		left= true
	elif not Input.is_key_pressed(KEY_LEFT):
		left = false