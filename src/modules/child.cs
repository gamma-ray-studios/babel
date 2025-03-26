using Godot;

public partial class child : Node2D {
	public struct Foo {
		public string bar;
	}

	public override void _Ready() {
		GD.PrintS("ready:", Name);
	}

	public void Setup(Foo foo) {
		GD.PrintS("setup:", foo.bar);
	}
}
