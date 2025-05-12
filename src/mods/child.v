module mods

import gd
import log

pub struct Idk {
	wat string
}

pub struct ChildV {
	gd.Node2D
}

fn (mut s ChildV) setup(idk Idk) {
	log.info('\t${s.get_parent().get_name()}/${s.get_name()}: ${idk.wat}')
}
