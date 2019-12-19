extends RigidBody2D

var ball = 3
var speed = 2
var spawnLoc = get_local_mouse_position()
var velocity = Vector2()

func _ready():
    contact_monitor = true
    set_max_contacts_reported(4)
    
func _physics_process(delta):
    var mouse_x = get_viewport().get_mouse_position().x
    if get_input() == false:
        position = Vector2(mouse_x, position.y + 60)
    var bodies = get_colliding_bodies()
    #var damage = 1
    for body in bodies:
        if body.is_in_group("Tiles"):
            body.queue_free()
    
    # =INTENDED=
    #for body in bodies:
        #if body.is_in_group("Tiles"):
            #body.health -= damage
            #if body.health == 0:
                #body.queue_free()
func get_input():    
    if Input.is_action_pressed("ui_accept") and speed == 0:
        velocity += -transform.y * speed
        velocity += -transform.x * speed
        
    if position.y > get_viewport_rect().end.y:
        ball -= 1
        if ball == 0:
            queue_free()
            print("Your chances for escape have run out!")
        else:
            position.y = 550
            position.x = spawnLoc