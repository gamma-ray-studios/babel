class_name ParentGD extends Node2D

@onready var child: ChildGD = $child

func _ready() -> void:
	prints("ready:", name)

	var idk := ChildGD.Idk.new()
	idk.wat = "gdscript KEKW"
	child.setup(idk)
