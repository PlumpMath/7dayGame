extends Node

var score
var alaa
var om_alaa

signal score_changed

func score_plus_one():
	score += 1
	emit_signal("score_changed", score)

func get_score():
	return score

func _ready():
	score = 0
	alaa = get_node("/root/scene_root/alaa")
	om_alaa = get_node("/root/scene_root/om_alaa")

func get_alaa():
	return alaa

func get_om_alaa():
	return om_alaa