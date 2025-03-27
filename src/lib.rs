use godot::prelude::*;

mod modules;

struct Extension;

#[gdextension]
unsafe impl ExtensionLibrary for Extension {}
