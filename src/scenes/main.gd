extends Node2D

func _ready():
	if DisplayServer.get_name() == "headless":
		get_tree().quit()
