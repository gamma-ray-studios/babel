using Godot;

public partial class child : Node2D {
	public struct Foo {
		public string bar;
	}

	public void Setup(Foo foo) {
		GD.PrintS($"\t{GetParent().Name}/{Name}:", foo.bar);
	}
}
