use godot::prelude::*;

#[derive(GodotClass)]
#[class(base=Node2D)]
pub struct ChildRust {
	base: Base<Node2D>
}

pub struct Idk {
	pub wat: String
}

#[godot_api]
impl INode2D for ChildRust {
	fn init(base: Base<Self::Base>) -> Self {
		Self {
			base,
		}
	}
}

impl ChildRust {
	pub fn setup(&mut self, idk: Idk) {
		godot_print!("\t{}/{}: {}", self.base().get_parent().unwrap().get_name(), self.base().get_name(), idk.wat);
	}
}
