module mods

import gd
import log

pub struct ParentV {
	gd.Node2D
mut:
	child   ?ChildV
}

fn (mut self ParentV) ready_() {
	if gd.Engine.get_singleton().is_editor_hint() {
		return
	}

	log.info('ready: ${self.get_name()}')

	if mut child := self.get_node_v('child').cast_to_v[ChildV]('ChildV') {
		self.child = child
		idk := Idk{'vvvvvv'}
		child.setup(idk)
	}
}
