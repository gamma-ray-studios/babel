import SwiftGodot

@Godot
class ParentSwift: Node2D {
	override func _ready() {
		GD.print("ready:", name)
	}
}
