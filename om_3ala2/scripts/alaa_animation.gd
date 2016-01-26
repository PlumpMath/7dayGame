extends AnimationPlayer

func _ready():
	set_autoplay("run")
	set_process(true)

func _process(delta):
	if not is_playing():
		play("run")