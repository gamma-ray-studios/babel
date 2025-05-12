module mods

import gd
import log

pub struct ParentV {
	gd.Node2D
mut:
	child   ?ChildV
}

fn (mut s ParentV) ready_() {
	log.info('ready: ${s.get_name()}')

	if mut child := s.get_node_v('child').cast_to_v[ChildV]('ChildV') {
		s.child = child
		idk := Idk{'vvvvvv'}
		child.setup(idk)
	}
}
