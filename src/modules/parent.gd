class_name ParentGD extends Node2D

@onready var child: ChildGD = $child

func _ready() -> void:
	prints("ready:", name)

	var foo := ChildGD.Foo.new()
	foo.bar = "gdscript KEKW"
	child.setup(foo)
