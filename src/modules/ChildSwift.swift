import SwiftGodot

struct Idk {
	var wat: String
}

@Godot
class ChildSwift: Node2D {
	func setup(idk: Idk) {
		GD.print("\t", getParent()?.name, "/", name, ":", idk.wat)
	}
}
