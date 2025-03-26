using Godot;

public partial class parent : Node2D {
	public override void _Ready() {
		GD.PrintS("ready:", Name);

		var child = GetNode<child>("child");
		child.Setup(new child.Foo { bar = "hello" });
	}
}
