module main

import log

import gd

pub fn init_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	// Register classes at scene initialization
	if l == .initialization_level_scene {
		println('init')
	}
}

pub fn deinit_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		println('deinit')
	}
}

@[export: 'gdext_v_init']
fn init_gdext(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	gd.setup_lib(gpaddr, clp)

	ver := gd.GDExtensionGodotVersion{}
	gdf.get_godot_version(&ver)
	println('version ${ver}')

	// setup the `initialize` function
	gdnit.initialize = init_gd
	// setup the `deinitialize` function
	gdnit.deinitialize = deinit_gd

	// setup godot logger
	log.set_logger(&gd.GodotLogger{})
	return 1
}
