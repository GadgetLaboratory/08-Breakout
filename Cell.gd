extends Node

export var lives = 3

func _ready():
	randomize()


func change_lives(l):
	lives += l
	if lives < 0:
		get_tree().change_scene("res://GameOver.tscn")