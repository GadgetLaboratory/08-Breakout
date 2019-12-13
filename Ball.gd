extends RigidBody2D


var released = false
onready var Cell = get_node("/root/Cell")
onready var Paddle = get_node("/root/Cell/Paddle")
onready var init_pos = global_position

var powerup = preload("res://Powerup.tscn")

const SPEEDUP = 1.05

func _ready():
	randomize()
	contact_monitor = true
	set_max_contacts_reported(4)	


func _physics_process(delta):
	var prob = rand_range(0,1)
	if prob < 0.0005:
		var location = Vector2(rand_range(100,900),rand_range(100,200))
		var pw = powerup.instance()
		pw.global_position = location
		Cell.add_child(pw)

	# Check for collisions
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Tiles"):
			pass
		if body.name == "Paddle":
			linear_velocity *= SPEEDUP
		if body.name == "Wall":
			pass

	if global_position.y > 605:
		Cell.change_lives(-1)
		linear_velocity = Vector2(0,0)
		global_position = init_pos
		global_position.x = Paddle.position.x
		released = false
		
				

func lock_position(x):
	if not released:
		global_position.x = x

func release():
	if not released:
		released = true
		var temp = Vector2(0,-400)
		if (rand_range(0,1) > 0.5):
			temp = temp.rotated(rand_range(PI/4,PI/3))
		else:
			temp = temp.rotated(rand_range(-PI/4,-PI/3))
		linear_velocity = temp
		
