extends Area

var rotation
var alaa
var alaa_position
var my_position

var direction

var reached_target = false

func _process(delta):
	alaa_position = alaa.get_translation()
	my_position = get_translation()
	
	if not reached_target:
		direction = alaa_position - my_position
		set_translation(my_position + direction.normalized() * 6 * delta)

func _on_body_enter(body):
	if body.get_name() == "alaa":
		reached_target = true

func _on_body_exit(body):
	if body.get_name() == "alaa":
		reached_target = false

func _ready():
	set_process(true)
	rotation = get_rotation()
	my_position = get_translation()
	alaa = get_node("/root/main").get_alaa()
	alaa_position = alaa.get_translation()
	direction = alaa_position - get_translation()
	self.connect("body_enter", self, "_on_body_enter")
	self.connect("body_exit", self, "_on_body_exit")