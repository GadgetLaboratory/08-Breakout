extends KinematicBody2D

onready var Ball = get_node("/root/Cell/Ball")
var constraints = [85,939]


func _physics_process(delta):
	var target = get_viewport().get_mouse_position().x
	if target < constraints[0]:
		target = constraints[0]
	if target > constraints[1]:
		target = constraints[1]
	position.x = target
	Ball.lock_position(target)
	if Input.is_action_just_pressed("action"):
		Ball.release()