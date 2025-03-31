class_name ChildGD extends Node2D

class Foo:
	var bar: String

func setup(foo: Foo) -> void:
	print("\t%s/%s: %s" % [ get_parent().name, name , foo.bar ])
