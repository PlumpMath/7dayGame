extends Area

var coin_spatial
var sfx_player

func _on_body_enter(body):
	coin_spatial.hide()
	sfx_player.play("coin_sfx")
	get_node("/root/main").score_plus_one()
	clear_shapes() #deletes the bounding box

func _ready():
	coin_spatial = get_node("Spatial")
	self.connect("body_enter", self, "_on_body_enter")
	sfx_player = get_node("coin_sfx")