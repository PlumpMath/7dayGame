extends AnimationPlayer

var up
var c
var space

func _ready():
	set_fixed_process(true)
	set_autoplay("run")
	get_animation("run").set_loop(true)

func _fixed_process(delta):
	up = Input.is_key_pressed(KEY_UP)
	c = Input.is_key_pressed(KEY_C)
	space = Input.is_key_pressed(KEY_SPACE)

	if up and not is_playing():
		play("run")
	elif not up:
		play("stop")
	if c == true and up == true and get_current_animation() != "tackling":
		play("tackling")
	if space == true:
		play("jump")