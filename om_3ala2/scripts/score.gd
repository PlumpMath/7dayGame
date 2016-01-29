extends Label

var score
var main

func _on_score_changed(new_score):
	score = new_score
	set_text(str(score))

func _ready():
	main = get_node("/root/main")
	main.connect("score_changed", self, "_on_score_changed")
	set_text("0")