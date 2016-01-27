extends KinematicBody

func _ready():
	set_collide_with_rigid_bodies(true)
	set_collide_with_static_bodies(true)