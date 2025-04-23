module main

import gd
import log

import mods

pub fn init_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	// Register classes at scene initialization
	if l == .initialization_level_scene {
		gd.register_class[mods.ParentV]('Node2D')
		gd.register_class[mods.ChildV]('Node2D')
	}
}

pub fn deinit_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
	}
}

@[export: 'gdext_v_init']
fn init_gdext(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	gd.setup_lib(gpaddr, clp)
	gdnit.initialize = init_gd
	gdnit.deinitialize = deinit_gd
	log.set_logger(&gd.GodotLogger{})
	return 1
}
