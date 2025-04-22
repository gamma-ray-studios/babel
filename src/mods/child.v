module mods

import gd
import log

pub struct Idk {
	wat string
}

pub struct ChildV {
	gd.Node2D
}

fn (mut self ChildV) setup(idk Idk) {
	log.info('\t${self.get_parent().get_name()}/${self.get_name()}: ${idk.wat}')
}
