extends RigidBody2D

func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)	

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.name == "Paddle":
			print("Power up!")
			queue_free()