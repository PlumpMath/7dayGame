extends Node

var score

signal score_changed

func score_plus_one():
	score += 1
	emit_signal("score_changed", score)

func get_score():
	return score

func _ready():
	score = 0