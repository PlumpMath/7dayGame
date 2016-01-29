extends Area

func enter(body):
	print("hi")

func _ready():
	self.connect("body_enter", self, "enter")