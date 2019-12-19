extends StaticBody2D

var tile1 = preload("res://Assets/tile1.png")
var tile2 = preload("res://Assets/tile2.png")
var tile3 = preload("res://Assets/tile3.png")
var tile4 = preload("res://Assets/tile4.png")
var tile5 = preload("res://Assets/tile5.png")
var tile6 = preload("res://Assets/tile6.png")
var tile7 = preload("res://Assets/tile7.png")
var tile8 = preload("res://Assets/tile8.png")
var tile9 = preload("res://Assets/tile9.png")
var tile10 = preload("res://Assets/tile10.png")

# var health = int(get_parent().name) doesn't seem to work correctly, should revise later

onready var sprite = get_node("Sprite")
func applyTexture(txt):
    sprite.set_texture(txt)

func healthCheck():
    # Wish to revise one day to make the following happen: On collision, check for health and re-apply the matching texture.
    # sprite.set_texture("tile"+(get_parent().name))
        # the above doesn't seen to work and quite frankly i'm out of ideas and time
    pass 
    
func _ready():   
    if get_parent().name == "1":
       applyTexture(tile1)
    if get_parent().name == "2":
       applyTexture(tile2)
    if get_parent().name == "3":
       applyTexture(tile3)
    if get_parent().name == "4":
       applyTexture(tile4)
    if get_parent().name == "5":
       applyTexture(tile5)
    if get_parent().name == "6":
       applyTexture(tile6)
    if get_parent().name == "7":
       applyTexture(tile7)
    if get_parent().name == "8":
       applyTexture(tile8)
    if get_parent().name == "9":
       applyTexture(tile9)
    if get_parent().name == "10":
       applyTexture(tile10)