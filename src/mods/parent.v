module mods

import gd
import log

pub struct ParentV {
	gd.Node2D
mut:
	child ?ChildV
}

fn (mut s ParentV) ready_() {
	log.info('ready: ${s.get_name()}')

	mut child := s.get_node_as[ChildV]('child')
	s.child = child
	child.setup(Idk{'vvvvvv'})
}
