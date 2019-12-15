extends RigidBody2D

func _ready():
    contact_monitor = true
    set_max_contacts_reported(4)
    
func _physics_process(delta):
    var ball = 3
    var bodies = get_colliding_bodies()
    var spawnLoc = get_local_mouse_position()
    var damage = 1
    
    for body in bodies:
        if body.is_in_group("Tiles"):
            body.health -= damage
            body.queue_free()
            
    if position.y > get_viewport_rect().end.y:
        ball -= 1
        if ball == 0:
            queue_free()
            print("Your chances for escape has run out!")
        else:
            position.y = 550
            position.x = spawnLoc