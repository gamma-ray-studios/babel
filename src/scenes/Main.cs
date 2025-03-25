using Godot;

public partial class Main : Node2D {
	public override void _Ready() {
		GD.PrintS("ready:", Name);

		var child = GetNode<Child>("child");
		child.Setup(new Child.Foo { bar = "hello" });
	}
}
