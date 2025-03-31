import SwiftGodot

@Godot
class ParentSwift: Node2D {
	@SceneTree(path: "child") var child: ChildSwift

	override func _ready() {
		GD.print("ready:", name)

		child.setup(idk: Idk(wat: "no rizz"))
	}
}
