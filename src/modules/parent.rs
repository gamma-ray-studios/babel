use godot::prelude::*;
use godot::classes::INode2D;
use godot::classes::Node2D;

#[derive(GodotClass)]
#[class(base=Node2D)]
struct ParentRust {
	base: Base<Node2D>
}

#[godot_api]
impl INode2D for ParentRust {
	fn init(base: Base<Self::Base>) -> Self {
		Self {
			base,
		}
	}

	fn ready(&mut self) {
		godot_print!("ready: {}", self.base().get_name());
	}
}
