use godot::prelude::*;

use crate::modules::child;

#[derive(GodotClass)]
#[class(base=Node2D)]
struct ParentRust {
	base: Base<Node2D>,

	child: OnReady<Gd<child::ChildRust>>,
}

#[godot_api]
impl INode2D for ParentRust {
	fn init(base: Base<Self::Base>) -> Self {
		Self {
			base,

			child: OnReady::node("child"),
		}
	}

	fn ready(&mut self) {
		godot_print!("ready: {}", self.base().get_name());

		let idk = child::Idk {
			wat: "rewrite that shit in rust".to_string(),
		};
		self.child.bind_mut().setup(idk);
	}
}
