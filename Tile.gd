extends StaticBody2D

var tile1 = preload("res://Assets/tile1.png")
var tile2 = preload("res://Assets/tile2.png")
var tile3 = preload("res://Assets/tile3.png")
#var tile4 = preload("res://Assets/tile4.png")
#var tile5 = preload("res://Assets/tile5.png")
#var tile6 = preload("res://Assets/tile6.png")
#var tile7 = preload("res://Assets/tile7.png")
#var tile8 = preload("res://Assets/tile8.png")
#var tile9 = preload("res://Assets/tile9.png")
#var tile10 = preload("res://Assets/tile10.png")

onready var modifier = str(get_parent().name)
onready var health = int(get_parent().name)

var score = 0

func _ready():
	$Sprite.set_texture(load("res://assets/" + "tile"+modifier + ".png"))


func applyTexture():
	pass

func healthCheck():
	$Sprite.set_texture(load("res://assets/" + "tile"+modifier + ".png"))
	pass
    
    
    